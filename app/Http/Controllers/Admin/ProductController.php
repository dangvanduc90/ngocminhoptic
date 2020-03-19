<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\ProductRequest as ProductRequest;
use App\Admin\Product;
use App\Admin\Type;
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
        Product::create($arr_data);
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
}
