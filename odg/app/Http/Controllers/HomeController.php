<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(){
       return view('web.pages.index');
    }

    public function listKS(){
        return view('web.pages.list-ks',['flag'=>'list-ks']);
    }

    public function detailKS($slug){
        return view('web.pages.detail-ks',['flag'=>'list-ks']);
    }

    public function listVoucher(){
        return view('web.pages.list-voucher',['flag'=>'voucher']);
    }

    public function detailVoucher($slug){
        return view('web.pages.detail-voucher',['flag'=>'voucher']);
    }

    public function getContact(){
        return view('web.pages.contact',['flag'=>'contact']);
    }

    public function vechungtoi(){
        return view('web.pages.ve-chung-toi');
    }

    public function cauhoithuonggap(){
        return view('web.pages.cau-hoi-thuong-gap');
    }

}
