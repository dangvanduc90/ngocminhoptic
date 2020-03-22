<?php

namespace App\Http\Controllers\Admin;

use App\Admin\Content;
use App\Admin\CoSo;
use App\Admin\Post;
use App\Http\Controllers\Controller;
use App\Http\Requests\PostRequest as PostRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class CoSoController extends Controller
{
    public function index()
    {
        $objs = CoSo::all();
        return view('back-end.coso.list',['data'=>$objs]);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('back-end.coso.create');
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
        CoSo::create($arr_data);
        Session::flash('success-coso', 'Tạo mới cơ sở thành công.');
        return redirect()->route('coso.create');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $obj = CoSo::find($id);
        if($obj == null){
            Session::flash('error-post', 'Không tìm thấy dữ liệu.');
            return redirect()->route('coso.index');
        }
        return view('back-end.coso.edit',['obj'=>$obj]);

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
        $obj = CoSo::find($id);
        if($obj == null){
            Session::flash('error-coso', 'Không tìm thấy dữ liệu.');
            return redirect()->route('coso.index');
        }
        $arr_data = $request->all();
        $obj->update($arr_data);
        Session::flash('success-coso', 'Cập nhật cơ sở thành công.');
        return redirect()->route('coso.edit',['id'=>$id]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $obj = CoSo::find($id);
        if($obj == null){
            Session::flash('error-coso', 'Không tìm thấy dữ liệu.');
            return redirect()->route('coso.index');
        }
        $obj->delete();
        Session::flash('success-coso', 'Xóa cơ sở thành công.');
        return redirect()->route('coso.index');
    }
}
