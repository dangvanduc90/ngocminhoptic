<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;
use App\Admin\Donhang;
use App\Admin\Benhan;


class HomeController extends Controller
{
    //
	public function adminHome(){
		return view('back-end.pages.home');
	}

	public function createSlug(Request $request)
	{
		$slug = Str::slug($request->input('str'), '-');
		return response()->json(array('slug'=>$slug), 200);
	}
	public function getData($start_date, $end_date){
		$donhang_1 = Donhang::orderby('created_at');
		$donhang_2 = Benhan::orderby('created_at');
		if($start_date != null && $start_date != ''){
			$start_date = \DateTime::createFromFormat('d/m/Y',  $start_date)->format('Y-m-d');
			$donhang_1 = $donhang_1->whereRaw("STR_TO_DATE(created_at,'%Y-%m-%d %H:%i') >= '".$start_date."'");
			$donhang_2 = $donhang_2->whereRaw("STR_TO_DATE(created_at,'%Y-%m-%d %H:%i') >= '".$start_date."'");
		}
		if($end_date != null && $end_date != ''){
			$end_date = \DateTime::createFromFormat('d/m/Y',  $end_date)->format('Y-m-d');
			$donhang_1 = $donhang_1->whereRaw("STR_TO_DATE(created_at,'%Y-%m-%d %H:%i') <= '".$end_date."'");
			$donhang_2 = $donhang_2->whereRaw("STR_TO_DATE(created_at,'%Y-%m-%d %H:%i') <= '".$end_date."'");
		}
		return ['donhang_1' => $donhang_1->get(), 'donhang_2'=>$donhang_2->get()];

	}
	public function report(Request $request){
		$start_date = $request->start_date;
		$end_date = $request->end_date;
		if($start_date == null || $end_date == null){
			$end_date = date('d/m/Y');
        	$start_date = '01/'.date('m').'/'.date('Y');
		}
		$data = $this->getData($start_date, $end_date);
		return view('back-end.pages.report',['start_date'=>$start_date, 'end_date'=>$end_date, 'data' =>$data]);
	}

	
}
