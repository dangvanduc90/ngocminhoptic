<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Admin\Khambenh;
use Session;

class KhambenhController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $objs = Khambenh::all();
        return view('back-end.khambenhs.list',['data'=>$objs]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('back-end.khambenhs.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $arr_data = $request->all();
        khambenh::create($arr_data);
        Session::flash('success-khambenh', 'Tạo mới sản phẩm thành công.');
        return redirect(route('san-pham.create'));
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
        $obj = Khambenh::find($id);
        if($obj == null){
            Session::flash('error-khambenh', 'Không tìm thấy dữ liệu.');
            return redirect()->route('khambenh.index');
        }
        return view('back-end.khambenhs.edit',['obj'=>$obj]);
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
        $obj = Khambenh::find($id);
        if($obj == null){
            Session::flash('error-khambenh', 'Không tìm thấy dữ liệu.');
            return redirect()->route('khambenh.index');
        }
        $arr_data = $request->all();
        $obj->update($arr_data);
        Session::flash('success-khambenh', 'Thay đổi thông tin thành công.');
        return redirect(route('san-pham.edit', ['id' => $id]));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $obj = Khambenh::find($id);
        if($obj == null){
            Session::flash('error-khambenh', 'Không tìm thấy dữ liệu.');
            return redirect()->route('san-pham.index');
        }
        $obj->delete();
        Session::flash('success-khambenh', 'Xóa thông tin thành công.');
        return redirect()->route('san-pham.index');
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
                $obj = Khambenh::find($data[$i]);
                if($obj != null)
                {
                    $obj->status = $status;
                    $obj->update();
                }
            }
        }else{
            for($i = 0; $i < sizeof($data); $i++)
            {
                $obj = Khambenh::find($data[$i]);
                if($obj != null)
                {
                    $obj->delete();
                }
            }
        }
        Session::flash('success-khambenh', 'Update đồng loạt thành công.');
        return redirect()->route('san-pham.index');
    }
}
