<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Admin\Color;
use App\Admin\Product;
use Session;

class ColorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $objs = Color::orderby('product_id')->get();
        return view('back-end.colors.list',['data'=>$objs]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $products = Product::where('status',1)->get();
        return view('back-end.colors.create',['products'=>$products]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $arr_data = $request->all();
        Color::create($arr_data);
        Session::flash('success-color', 'Tạo mới color thành công.');
        return redirect(route('color.create'));
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
        $obj = Color::find($id);
        if($obj == null){
            Session::flash('error-color', 'Không tìm thấy dữ liệu.');  
            return redirect()->route('color.index');  
        }
        $products = Product::where('status',1)->get();
        return view('back-end.colors.edit',['obj'=>$obj, 'products'=>$products]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $obj = Color::find($id);
        if($obj == null){
            Session::flash('error-color', 'Không tìm thấy dữ liệu.');  
            return redirect()->route('color.index');  
        }
        $arr_data = $request->all();
        $obj->update($arr_data);
        Session::flash('success-color', 'Thay đổi thông tin thành công.');
        return redirect(route('color.edit', ['id' => $id]));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $obj = Color::find($id);
        if($obj == null){
            Session::flash('error-color', 'Không tìm thấy dữ liệu.');  
            return redirect()->route('color.index');  
        }
        $obj->delete();
        Session::flash('success-color', 'Xóa thông tin thành công.');  
        return redirect()->route('color.index');  
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
                $obj = Color::find($data[$i]);
                if($obj != null)
                {
                    $obj->status = $status;
                    $obj->update();
                }
            }
        }else{
            for($i = 0; $i < sizeof($data); $i++)
            {
                $obj = Color::find($data[$i]);
                if($obj != null)
                {
                    $obj->delete();
                }
            }
        }       
        Session::flash('success-color', 'Update đồng loạt thành công.');
        return redirect()->route('color.index');
    }
}
