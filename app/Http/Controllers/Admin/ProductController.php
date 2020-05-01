<?php

namespace App\Http\Controllers\Admin;

use App\Admin\ImageProduct;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\ProductRequest as ProductRequest;
use App\Admin\Product;
use App\Admin\Type;
use Illuminate\Support\Facades\Validator;
use Session;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $objs = Product::all();
        return view('back-end.products.list',['data'=>$objs]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $types = Type::orderby('name')->where('status',1)->get();
        return view('back-end.products.create',['types'=>$types]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        //
        $arr_data = $request->all();
        $product = Product::create($arr_data);

        $setDefault = in_array(1, $request->input('is_default'));
        $arr_images = [];
        ImageProduct::where('product_id', $product->id)->delete();
        foreach ($request->input('product_image') as $key => $image) {
            $valueIsDefault = $request->input('is_default')[$key];
            if (!$setDefault && $key == 0) {
                $valueIsDefault = 1;
            }
            array_push($arr_images, [
                'product_id' => $product->id,
                'is_default' => $valueIsDefault,
                'title' => $request->input('title')[$key],
                'alt' => $request->input('alt')[$key],
                'product_image' => $image,
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ]);
        }
        ImageProduct::insert($arr_images);

        Session::flash('success-product', 'Tạo mới sản phẩm thành công.');
        return redirect(route('product.create'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $obj = Product::find($id);
        if($obj == null){
            Session::flash('error-product', 'Không tìm thấy dữ liệu.');
            return redirect()->route('product.index');
        }

        $types = Type::orderby('name')->where('status',1)->get();
        return view('back-end.products.edit',['obj'=>$obj, 'types'=>$types]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, $id)
    {
        $obj = Product::find($id);
        if($obj == null){
            Session::flash('error-product', 'Không tìm thấy dữ liệu.');
            return redirect()->route('product.index');
        }
        $arr_data = $request->all();
        $obj->update($arr_data);

        $setDefault = in_array(1, $request->input('is_default'));
        $arr_images = [];
        ImageProduct::where('product_id', $obj->id)->delete();
        foreach ($request->input('product_image') as $key => $image) {
            $valueIsDefault = $request->input('is_default')[$key];
            if (!$setDefault && $key == 0) {
                $valueIsDefault = 1;
            }
            array_push($arr_images, [
                'product_id' => $obj->id,
                'is_default' => $valueIsDefault,
                'title' => $request->input('title')[$key],
                'alt' => $request->input('alt')[$key],
                'product_image' => $image,
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ]);
        }
        ImageProduct::insert($arr_images);

        Session::flash('success-product', 'Thay đổi thông tin thành công.');
        return redirect(route('product.edit', ['id' => $id]));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $obj = Product::find($id);
        if($obj == null){
            Session::flash('error-product', 'Không tìm thấy dữ liệu.');
            return redirect()->route('product.index');
        }
        $obj->delete();
        Session::flash('success-product', 'Xóa thông tin thành công.');
        return redirect()->route('product.index');
    }

    public function mutileUpdate(Request $request)
    {
        $status = $request->status;
        $data = $request->data_selected;
        $data = explode(",", $data[0]);
        if($status != 2)
        {
            for($i = 0; $i < sizeof($data); $i++)
            {
                $obj = Product::find($data[$i]);
                if($obj != null)
                {
                    $obj->status = $status;
                    $obj->update();
                }
            }
        }else{
            for($i = 0; $i < sizeof($data); $i++)
            {
                $obj = Product::find($data[$i]);
                if($obj != null)
                {
                    $obj->delete();
                }
            }
        }
        Session::flash('success-product', 'Update đồng loạt thành công.');
        return redirect()->route('product.index');
    }

    public function upload(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'select_file' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'index' => 'required|integer',
        ]);
        if($validation->passes()) {
            $index = $request->input('index');
            $image = $request->file('select_file');
            $name = $image->getClientOriginalName();

            $path = 'FILES/source/products/' . date('Y-m-d');
            $href = '/'.$path . '/'.$name;
            $image->move($path, $name);

            $value = $index == 1 ? 1 : 0;
            $checked = $index == 1 ? 'checked' : '';
            return response()->json([
                'message'   => "Tải ảnh $name lên thành công",
                'html' => '`<td><input type="file" name="select_file" class="select_file" accept="image/*" /></td>
                    <td>
                        <button type="button" class="btn btn-primary btn-upload">Upload</button>
                    </td>
                    <td>
                        <span class="uploaded_image">
                            <img src="'.$href.'" class="img-thumbnail" />
                            <input type="hidden" value="'.$href.'" name="product_image[]">
                            <input type="hidden" value="'.$name.'" name="title[]">
                            <input type="hidden" value="'.$name.'" name="alt[]">
                        </span>
                    </td>
                    <td>
                        <label>Ảnh đại diện
                            <input type="radio" class="is_default" '.$checked.' name="rdo_is_default" >
                            <input type="hidden" name="is_default[]" value="'.$value.'">
                        </label>
                    </td>
                    <td class="text-right"><button type="button" class="btn btn-danger btn-delete-img">Xóa ảnh</button></td>',
                'class_name'  => 'alert-success',
                'success' => 1,
            ]);
        } else {
            return response()->json([
                'message'   => $validation->errors()->all(),
                'html' => '',
                'class_name'  => 'alert-danger',
                'success' => 0,
            ]);
        }
    }
}
