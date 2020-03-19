<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\WebinfoRequest as WebinfoRequest;
use App\Admin\Webinfo;
use Session;

class WebinfoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $objs = Webinfo::all();
        return view('back-end.webinfo.list')->with('data',$objs);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('back-end.webinfo.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(WebinfoRequest $request)
    {
        Webinfo::create($request->all());
        Session::flash('success-webinfo', 'Tạo mới thông tin website "'.$request->name.'" thành công.');
        return redirect(route('webinfo.create'));
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
        $obj = Webinfo::find($id);
        if($obj == null){
            Session::flash('error-webinfo', 'Không tìm thấy dữ liệu.');  
            return redirect()->route('webinfo.index');  
        }
        return view('back-end.webinfo.edit',['obj'=>$obj]);
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
        //
        $obj = Webinfo::find($id);
        if($obj == null){
            Session::flash('error-webinfo', 'Không tìm thấy dữ liệu.');  
            return redirect()->route('webinfo.index');  
        }
        $obj->update($request->all());
        Session::flash('success-webinfo', 'Thay đổi thông tin thành công.');
        return redirect(route('webinfo.edit', ['id' => $id]));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $obj = Webinfo::find($id);
        if($obj == null){
            Session::flash('error-webinfo', 'Không tìm thấy dữ liệu.');  
            return redirect()->route('webinfo.index');  
        }
        $obj->delete();
        Session::flash('success-webinfo', 'Xóa thông tin thành công.');  
        return redirect()->route('webinfo.index');  
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
                $obj = Webinfo::find($data[$i]);
                if($obj != null)
                {
                    $obj->status = $status;
                    $obj->update();
                }
            }
        }else{
            for($i = 0; $i < sizeof($data); $i++)
            {
                $obj = Webinfo::find($data[$i]);
                if($obj != null)
                {
                    $obj->delete();
                }
            }
        }       
        Session::flash('success-webinfo', 'Update đồng loạt thành công.');
        return redirect()->route('webinfo.index');
    }
}
