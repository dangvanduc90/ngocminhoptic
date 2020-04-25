<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\TypeRequest as TypeRequest;
use App\Admin\Type;
use Session;

class TypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $objs = Type::all()->sortBy('name');
        return view('back-end.types.list',['data'=>$objs]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('back-end.types.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TypeRequest $request)
    {
        //
        $arr_data = $request->all();
        Type::create($arr_data);
        Session::flash('success-type', 'Tạo mới thương hiệu thành công.');
        return redirect(route('type.create'));
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
        $obj = Type::find($id);
        if($obj == null){
            Session::flash('error-type', 'Không tìm thấy dữ liệu.');
            return redirect()->route('type.index');
        }
        return view('back-end.types.edit',['obj'=>$obj]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(TypeRequest $request, $id)
    {
        $obj = Type::find($id);
        if($obj == null){
            Session::flash('error-type', 'Không tìm thấy dữ liệu.');
            return redirect()->route('type.index');
        }
        $arr_data = $request->all();
        $obj->update($arr_data);
        Session::flash('success-type', 'Thay đổi thông tin thành công.');
        return redirect(route('type.edit', ['id' => $id]));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $obj = Type::find($id);
        if($obj == null){
            Session::flash('error-type', 'Không tìm thấy dữ liệu.');
            return redirect()->route('type.index');
        }
        $obj->delete();
        Session::flash('success-type', 'Xóa thông tin thành công.');
        return redirect()->route('type.index');
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
                $obj = Type::find($data[$i]);
                if($obj != null)
                {
                    $obj->status = $status;
                    $obj->update();
                }
            }
        }else{
            for($i = 0; $i < sizeof($data); $i++)
            {
                $obj = Type::find($data[$i]);
                if($obj != null)
                {
                    $obj->delete();
                }
            }
        }
        Session::flash('success-type', 'Update đồng loạt thành công.');
        return redirect()->route('type.index');
    }
}
