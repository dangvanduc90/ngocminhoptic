<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Admin\Contact;
use Illuminate\Support\Facades\Session;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contacts = Contact::orderby('created_at', 'desc')->get();
        return view('back-end.contacts.list',['flag'=>'contact', 'contacts' => $contacts, 'name_session' => 'contact', 'page_name' => 'Followers']);
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
        $email = $request->input('email');
        $contact = Contact::where('email', $email)->first();
        if($contact != null){
            return 'Email đã được đăng ký !';
        }else{
            Contact::create(['email' => $email, 'status' => 0]);
            return 'Bạn đã đăng ký nhận thông báo thành công !';
        }
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
        $obj = Contact::find($id);
        if($obj == null){
            Session::flash('error-product', 'Không tìm thấy dữ liệu.');
            return redirect()->route('contact.show');
        }
        $obj->delete();
        Session::flash('success-product', 'Xóa thông tin thành công.');
        return redirect()->route('contact.show');
    }
}
