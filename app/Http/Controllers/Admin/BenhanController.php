<?php

namespace App\Http\Controllers\Admin;

use App\Admin\Webinfo;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Admin\Benhan;
use App\Admin\Khambenh;
use App\Admin\Donhangkham;
use App\Admin\Order;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Spipu\Html2Pdf\Html2Pdf;
use Illuminate\Support\Facades\Storage;
use \Illuminate\Support\Facades\Session;

class BenhanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $sanphams = Khambenh::where('status',1)->orderby('name')->get();
        $benhans = Benhan::orderby('created_at', 'desc')->get();
        $orders = Order::orderby('created_at', 'desc')->get();

        if (Session::has('id')) {
            $obj = Benhan::find(Session::get('id'));
            if($obj == null) abort(404);
            $num = $obj->donhangkhams()->count();
            Session::forget('id');
            return view('back-end.pages.crm',['obj'=>$obj, 'type'=>1, 'sanphams'=>$sanphams, 'num'=>$num, 'benhans' =>$benhans, 'orders'=>$orders]);
        }

        return view('back-end.pages.crm',['type'=>1, 'sanphams'=>$sanphams, 'num'=>1, 'benhans' =>$benhans, 'orders'=>$orders]);
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
        $data_benhan = $request->all();
        $data_benhan['status'] = 0;

        $data_benhan['khieunai'] = $data_benhan['khieunai'] ? str_replace(',', '', $data_benhan['khieunai']) : 0;
        $data_benhan['datcoc'] = $data_benhan['khieunai'] ? str_replace(',', '', $data_benhan['datcoc']) : 0;
        $data_benhan['congno'] = $data_benhan['congno'] ? str_replace(',', '', $data_benhan['congno']) : 0;
        $data_benhan['tongtien'] = $data_benhan['tongtien'] ? str_replace(',', '', $data_benhan['tongtien']) : 0;

        $benhan = Benhan::create($data_benhan);

        $data_donhang = $request->only('khambenh_id', 'gia', 'soluong', 'thanhtien');
        if(isset($data_donhang['khambenh_id']) && isset($data_donhang['gia']) && isset($data_donhang['soluong']) && isset($data_donhang['thanhtien']) ){
            $size = sizeof($data_donhang['khambenh_id']);
            if(sizeof($data_donhang['gia']) == $size &&
                sizeof($data_donhang['soluong']) == $size &&
                sizeof($data_donhang['thanhtien']) == $size){
                foreach ($data_donhang['khambenh_id'] as $key => $value) {
                    if($value != null && $value > 0){
                        $data = [];
                        $data['benhan_id'] = $benhan->id;
                        $data['khambenh_id'] = $value;
                        $data['soluong'] = $data_donhang['soluong'][$key];
                        $data['gia'] = str_replace(',', '', $data_donhang['gia'][$key]);
                        $data['thanhtien'] = str_replace(',', '', $data_donhang['thanhtien'][$key]);
                        Donhangkham::create($data);
                    }
                }
            }
            $this->download($benhan->id);

    }
    Session::flash('success-crm', 'Tạo mới bệnh án thành công !');
    return back();
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
        $data_benhan = $request->all();
        $obj = Benhan::find($id);
        if($obj == null) abort(404);

        $data_benhan['khieunai'] = $data_benhan['khieunai'] ? str_replace(',', '', $data_benhan['khieunai']) : 0;
        $data_benhan['datcoc'] = $data_benhan['khieunai'] ? str_replace(',', '', $data_benhan['datcoc']) : 0;
        $data_benhan['congno'] = $data_benhan['congno'] ? str_replace(',', '', $data_benhan['congno']) : 0;
        $data_benhan['tongtien'] = $data_benhan['tongtien'] ? str_replace(',', '', $data_benhan['tongtien']) : 0;

        $obj->update($data_benhan);
        $donhangs = $obj->donhangkhams()->get();

        $data_donhang = $request->only('khambenh_id', 'gia', 'soluong', 'thanhtien');
        if(isset($data_donhang['khambenh_id']) && isset($data_donhang['gia']) &&
            isset($data_donhang['soluong']) && isset($data_donhang['thanhtien']) ){
            $size = sizeof($data_donhang['khambenh_id']);
            if(sizeof($data_donhang['gia']) == $size &&
                sizeof($data_donhang['soluong']) == $size &&
                sizeof($data_donhang['thanhtien']) == $size){
                foreach ($donhangs as $donhang) {
                    $donhang->delete();
                }
                foreach ($data_donhang['khambenh_id'] as $key => $value) {
                    if($value != null && $value > 0){
                        $data = [];
                        $data['benhan_id'] = $obj->id;
                        $data['khambenh_id'] = $value;
                        $data['soluong'] = $data_donhang['soluong'][$key];
                        $data['gia'] = str_replace(',', '', $data_donhang['gia'][$key]);
                        $data['thanhtien'] = str_replace(',', '', $data_donhang['thanhtien'][$key]);
                        Donhangkham::create($data);
                    }
                }
            }
        }
        Session::flash('success-crm', 'Cập nhật bệnh án thành công !');
        return redirect()->route('benh-an.index')->with('id', $id);
    }

    public function add()
    {
        if (Session::has('id')) {
            Session::forget('id');
        }
        return redirect()->route('benh-an.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Benhan::destroy($id);
        Donhangkham::where('benhan_id', $id)->delete();
        return redirect()->route('benh-an.index');
    }

    public function ajaxAddProduct(Request $request){
        $sanphams = Khambenh::where('status',1)->orderby('name')->get();
        $j = $request->input('count');
        return view('back-end.crm.product',['j'=>$j, 'sanphams'=> $sanphams]);
    }

    public function ajaxgetBenhAn(Request $request)
    {
        $obj = Benhan::find($request->input('id'));
        $sanphams = Khambenh::where('status',1)->orderby('name')->get();
        if($obj == null) abort(404);
        $num = $obj->donhangkhams()->count();
        return view('back-end.crm.form',['obj'=>$obj, 'sanphams'=>$sanphams, 'num'=>$num, 'type'=>1]);
    }

    public function ajaxsearchBenhAn(Request $request)
    {

        $str = $request->input('str');
        $from_date = $request->input('from_date');
        $end_date = $request->input('end_date');
        $benhans = Benhan::orderby('created_at','desc');
        if($str != null && $str != ''){
            $str = mb_strtolower($str, 'UTF-8');
            $benhans = $benhans->where(function ($query) use ($str) {
                $query->orwhereRaw('lower(hovaten) like (?)', ["%{$str}%"]);
                $query->orwhereRaw('lower(madon) like (?)', ["%{$str}%"]);
                $query->orwhereRaw('lower(sdt) like (?)', ["%{$str}%"]);
                $query->orwhereRaw('lower(ghichu) like (?)', ["%{$str}%"]);
            });
        }
        if($from_date != null && $from_date != ''){
            $from_date = convert_format_ymd($from_date);
            $benhans = $benhans->whereRaw("STR_TO_DATE(ngaykham,'%d/%m/%Y') >= '".$from_date."'");
        }
        if($end_date != null && $end_date != ''){
            $end_date = convert_format_ymd($end_date);
            $benhans = $benhans->whereRaw("STR_TO_DATE(ngaykham,'%d/%m/%Y') <= '".$end_date."'");
        }
        $benhans = $benhans->get();
        return view('back-end.crm.table-benh-an',['benhans'=>$benhans]);
    }

    public function ajaxsearchOrder(Request $request)
    {

        $str = $request->input('str');
        $from_date = $request->input('from_date');
        $end_date = $request->input('end_date');
        $benhans = Order::orderby('created_at','desc');
        if($str != null && $str != ''){
            $str = mb_strtolower($str, 'UTF-8');
            $benhans = $benhans->where(function ($query) use ($str) {
                $query->orwhereRaw('lower(name) like (?)', ["%{$str}%"]);
                $query->orwhereRaw('lower(address) like (?)', ["%{$str}%"]);
                $query->orwhereRaw('lower(phone) like (?)', ["%{$str}%"]);
                $query->orwhereRaw('lower(email) like (?)', ["%{$str}%"]);
            });
        }
        if($from_date != null && $from_date != ''){
            $from_date = convert_format_ymd($from_date);
            $benhans = $benhans->whereRaw("STR_TO_DATE(ngay,'%d/%m/%Y') >= '".$from_date."'");
        }
        if($end_date != null && $end_date != ''){
            $end_date = convert_format_ymd($end_date);
            $benhans = $benhans->whereRaw("STR_TO_DATE(ngay,'%d/%m/%Y') <= '".$end_date."'");
        }
        $benhans = $benhans->get();
        return view('back-end.crm.table-order',['orders'=>$benhans]);
    }

    public function download($id){
        $obj = Benhan::find($id);
        if($obj == null) abort(404);
        $tongtien = $obj->tongtien;
        $khuyenmai = floatval($obj->khieunai);
        $congno = $obj->congno;
        $template = Storage::disk('template')->get('benh-an.php');
        $current_date = date('d/m/Y');
        $template = str_replace('_madon', $obj->madon, $template);
        $template = str_replace('_ngaydenkham', $obj->ngaykham, $template);
        $template = str_replace('_tenkhachhang', $obj->hovaten, $template);
        $template = str_replace('_sdtkhachhang', $obj->sdt, $template);
        $template = str_replace('_diachikhachhang', $obj->diachi, $template);
        if ($obj->noidung) {
            $template = str_replace('_ghichu', '
            <tr>
                <td style="width: 30%; text-align: left;">
                Ghi chú
                </td>
                <td style="width: 40%; text-align: left; ">
                : '. $obj->noidung .'
                </td>
            </tr>', $template);
        } else {
            $template = str_replace('_ghichu', '', $template);
        }
        $template = str_replace('_ngaykhamlai', $obj->ngayhen, $template);
        $template = str_replace('_tspd', $obj->pd, $template);
        $template = str_replace('_mpthiluc', $obj->mp_thiluc, $template);
        $template = str_replace('_mptskinh', $obj->mp_ts_moi, $template);
        $template = str_replace('_mptlcokinh', $obj->mp_tl_kich, $template);
        $template = str_replace('_mpna', $obj->mp_nhanap, $template);

        $template = str_replace('_mtthiluc', $obj->mt_thiluc, $template);
        $template = str_replace('_mttskinh', $obj->mt_ts_moi, $template);
        $template = str_replace('_mttlcokinh', $obj->mt_tl_kich, $template);
        $template = str_replace('_mtna', $obj->mt_nhanap, $template);

        $template = str_replace('_tongtien',number_format($tongtien), $template);
        $template = str_replace('_khuyenmai', number_format($khuyenmai), $template);
        $template = str_replace('_congno', number_format($congno), $template);
        $template = str_replace('_datcoc', number_format($obj->datcoc), $template);

        $template = str_replace('_authuser', Auth::user()->fullname, $template);

        $logo = Webinfo::where('name', 'logo')->where('status', 1)->value('image');
        $template = str_replace('_logo', $logo ?? 'http://ngocminh.test/FILES/source/logo-images.jpg', $template);

        $name_company = Webinfo::where('name', 'name_company')->where('status', 1)->value('content');
        $template = str_replace('_name_company', $name_company ?? 'KÍNH MẮT NGỌC MINH', $template);

        $address_company = Webinfo::where('name', 'address_company')->where('status', 1)->value('content');
        $template = str_replace('_address_company', $address_company ?? 'Số 83 - Đường Bát Khối - Long Biên - Hà Nội', $template);

        $hotline_company = Webinfo::where('name', 'hotline_company')->where('status', 1)->value('content');
        $template = str_replace('_hotline_company', $hotline_company ?? 'Hotline : 0915.959.980 - 0243.205.5979', $template);

        $email_company = Webinfo::where('name', 'email')->where('status', 1)->value('content');
        $template = str_replace('_email', $email_company ?? 'ngocminhoptic@gmail.com', $template);

        $template = str_replace('_website', config('app.url'), $template);

        $j = 1;
        $_html = "";
        foreach ($obj->donhangkhams()->get() as $donhang) {
            $sp = $donhang->khambenh;
            if($sp == null) $sp = "";
            else $sp = $sp->name;
            $_html  .= "<tr><td style='text-align:center; font-size: 12px;''>";
            $_html .= $j;
            $_html  .= "</td><td style='text-align:center; font-size: 12px;''>";
            $_html .= $sp;
            $_html  .= "</td><td style='text-align:center; font-size: 12px;''>";
            $_html .= $donhang->soluong;
            $_html  .= "</td><td style='text-align:center; font-size: 12px;''>";
            $_html .= number_format($donhang->gia);
            $_html  .= "</td><td style='text-align:center; font-size: 12px;''>";
            $_html .= number_format($donhang->thanhtien);
            $_html  .= "</td></tr>";
            $j++;
        }
        $template = str_replace('_dataSanPham', $_html, $template);

        $html2pdf = new HTML2PDF('P', 'A4', 'fr');
        $html2pdf->pdf->SetDisplayMode('fullpage');
        $html2pdf->writeHTML($template, true);
        $html2pdf->output('Invoive.pdf','D');
        return 'done';
    }
}
