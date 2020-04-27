<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Admin\LienHe;
use Illuminate\Support\Facades\Session;

class LienHeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lienhes = LienHe::orderby('created_at', 'desc')->get();
        return view('back-end.lienhes.list',['flag'=>'lienhe', 'lienhes' => $lienhes, 'name_session' => 'lienhe', 'page_name' => 'Contacts']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        //
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
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $obj = LienHe::find($id);
        if($obj == null){
            Session::flash('error-product', 'Không tìm thấy dữ liệu.');
            return redirect()->route('lienhe.index');
        }
        $obj->delete();
        Session::flash('success-product', 'Xóa thông tin thành công.');
        return redirect()->route('lienhe.index');
    }
}
