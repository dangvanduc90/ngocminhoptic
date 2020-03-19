<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Admin\Post;
use App\Admin\Product;
use App\Admin\Color;
use App\Admin\Banner;
use App\Admin\Webinfo;
use App\Admin\LienHe;
use App\Admin\Order;
use App\Admin\Benhan;
use App\Admin\Type;
use Spipu\Html2Pdf\Html2Pdf;
use Illuminate\Support\Facades\Storage;
use Session;


class HomeController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $products = Product::where('status',1)->where('is_display',1)->orderby('created_at', 'desc')->paginate(32);
        $posts = Post::where('status',1)->where('type',1)->where('is_display',1)->orderby('created_at', 'desc')->take(5)->get();
        $banners = Banner::where('status',1)->where('type',1)->get();
        $thuonghieus = Banner::where('status',1)->where('type',2)->get();
        return view('welcome')->with(['posts' =>$posts, 'products' =>$products, 'banners' =>$banners, 'thuonghieus'=>$thuonghieus]);
    }

    public function changeLanguage($language)
    {
        \Session::put('website_language', $language);

        return redirect()->back();
    }

    public function detailPost($slug){
        $post = Post::where('status',1)->where('slug',$slug)->first();
        if($post == null) abort(404);
        $posts = Post::where('status',1)->where('type',1)->where('id', '<>', $post->id)->orderby('created_at', 'desc')->take(5)->get();
        return view('frontend.single-post', ['obj'=>$post, 'posts'=>$posts]);
    }

    public function listPost(){
        $posts = Post::where('status',1)->where('type', '<>',2)->orderby('created_at', 'desc')->paginate(10);
        return view('frontend.category', ['posts'=>$posts]);
    }

    public function listNew(){
        $posts = Post::where('status',1)->where('type',1)->orderby('created_at', 'desc')->paginate(10);
        return view('frontend.category', ['posts'=>$posts]);
    }

    public function listOff(){
        $posts = Post::where('status',1)->where('type',3)->orderby('created_at', 'desc')->paginate(10);
        return view('frontend.category', ['posts'=>$posts]);
    }

    public function productList(){
        $types = Type::where('status',1)->orderby('name')->get();
        return view('frontend.danhmuc', ['types'=>$types]);
    }

    public function productListOne($slug){
        $types = Type::where('status',1)->where('slug',$slug)->get();
        return view('frontend.danhmuc', ['types'=>$types]);
    }

    public function detailProduct($slug){
        $obj = Product::where('slug',$slug)->where('status',1)->first();
        if($obj == null) abort(404);
        $products = Product::where('type_id',$obj->type)->where('id','<>',$obj->id)->where('status',1)->get();
        return view('frontend.single-product',['obj' => $obj, 'products'=>$products]);
    }

    public function searchProduct(Request $request){
        $str = $request->input('text_search');
        $products = Product::where('status',1);
        if($str != null && $str != ''){
            $str = mb_strtolower($str, 'UTF-8');
            $products = $products->whereRaw('lower(name) like (?)',["%{$str}%"]);
        }
        $products = $products->orderby('created_at', 'desc')->paginate(15);
        return view('frontend.partials.list-product',['products' => $products]);
    }

    public function getLienHe(){
        $cosos = Banner::where('status',1)->where('type',4)->get();
        return view('frontend.lienhe',['cosos'=>$cosos]);
    }

    public function postLienHe(Request $request){
       $data = $request->all();
       $data['status'] = 0;
       LienHe::create($data);
       Session::flash('success-lienhe', 'Bạn đã gửi thông tin liên hệ thành công !');
       return back();

    }

    public function getDatlich(){
        $map = Webinfo::whereIN('code',['map'])->first();
        return view('frontend.datlich',['map'=>$map]);
    }

    public function postDatlich(Request $request){
       $data = $request->all();
       $data['status'] = 0;
       Order::create($data);
       Session::flash('success-datlich', 'Bạn đã đặt lịch thành công !');
       return back();

    }

    public function ajaxProductInfo(Request $request){
        $res = [];
        $id = $request->input('product_id');
        $product = Product::find($id);
        if($product == null) return "";
        return view('frontend.partials.modal-quick-view', ['product'=>$product]);
    }

    public function getBenhAn(){
        return view('frontend.ket-qua-tim-kiem');
    }

    public function ajaxsearchBenhAn(Request $request)
    {

        $ten = $request->input('ten');
        $dt = $request->input('dt');
        $mahd = $request->input('mahd');
        $ngaykham = $request->input('ngaykham');
        $benhans = Benhan::orderby('created_at','desc');
        if($ten != null && $ten != ''){
            $ten = mb_strtolower($ten, 'UTF-8');
            $benhans = $benhans->whereRaw('lower(hovaten) like (?)', ["%{$ten}%"]);
        }
        if($dt != null && $dt != ''){
            $dt = mb_strtolower($dt, 'UTF-8');
            $benhans = $benhans->whereRaw('lower(sdt) like (?)', ["%{$dt}%"]);
        }
        if($mahd != null && $mahd != ''){
            $mahd = mb_strtolower($mahd, 'UTF-8');
            $benhans = $benhans->whereRaw('lower(madon) like (?)', ["%{$mahd}%"]);
        }
        if($ngaykham != null && $ngaykham != ''){
            $ngaykham = convert_format_ymd($ngaykham);
            $benhans = $benhans->whereRaw("STR_TO_DATE(ngaykham,'%d/%m/%Y') = '".$ngaykham."'");
        }
        $benhans = $benhans->get();
        return view('frontend.partials.table-benhan',['data'=>$benhans]);
    }

    public function ajaxinfoBenhAn(Request $request)
    {
        $obj = Benhan::find($request->input('id'));
        if ($obj == null) return abort(404);
        return view('frontend.partials.modal-view-benhan',['obj'=>$obj]);
    }

    public function ajaxscanBenhAn($id)
    {
        $obj = Benhan::find($id);
        if ($obj == null) abort(404);
        $tongtien = $obj->donhangkhams()->sum('thanhtien');
        $khuyenmai = floatval($obj->khieunai);
        $tongcong = floatval($tongtien) - $khuyenmai;
        $template = Storage::disk('template')->get('benh-an-2.php');
        $current_date = date('d/m/Y');
        $template = str_replace('_madon', $obj->madon, $template);
        $template = str_replace('_ngayhomnay', $current_date, $template);
        $template = str_replace('_tenkhachhang', $obj->hovaten, $template);
        $template = str_replace('_sdtkhachhang', $obj->sdt, $template);
        $template = str_replace('_diachikhachhang', $obj->diachi, $template);
        $template = str_replace('_ghichu', $obj->noidung, $template);
        $template = str_replace('_ngaykhamlai', $obj->ngayhen, $template);
        $template = str_replace('_tspd', $obj->pd, $template);
        $template = str_replace('_mpthiluc', $obj->mp_thiluc, $template);
        $template = str_replace('_mptskinh', $obj->mp_ts_moi, $template);
        $template = str_replace('_mptlcokinh', $obj->mp_tl_kich, $template);
        $template = str_replace('_mpna', $obj->mp_nhanap, $template);

        // $template = str_replace('_mtthiluc', $obj->mt_thiluc, $template);
        // $template = str_replace('_mttskinh', $obj->mt_ts_moi, $template);
        // $template = str_replace('_mttlcokinh', $obj->mt_tl_kich, $template);
        // $template = str_replace('_mtna', $obj->mt_nhanap, $template);

        // $template = str_replace('_tongtien',number_format($tongtien), $template);
        // $template = str_replace('_khuyenmai', number_format($khuyenmai), $template);
        // $template = str_replace('_tongcong', number_format($tongcong), $template);

        $j = 1;
        $_html = "";
        foreach ($obj->donhangkhams()->get() as $donhang) {
            $sp = $donhang->khambenh;
            if($sp == null) $sp = "";
            else $sp = $sp->name;
            $_html  .= "<tr><td style='text-align:center; font-size: 9px;''>";
            $_html .= $j;
            $_html  .= "</td><td style='text-align:center; font-size: 9px;''>";
            $_html .= $sp;
            $_html  .= "</td><td style='text-align:center; font-size: 9px;''>";
            $_html .= $donhang->soluong; 
            $_html  .= "</td><td style='text-align:center; font-size: 9px;''>";
            $_html .= number_format($donhang->gia);
            $_html  .= "</td><td style='text-align:center; font-size: 9px;''>";
            $_html .= number_format($donhang->thanhtien);
            $_html  .= "</td></tr>"; 
        }
        $template = str_replace('_dataSanPham', $_html, $template);

        $html2pdf = new HTML2PDF('P', 'A4', 'fr');
        $html2pdf->pdf->SetDisplayMode('fullpage');
        $html2pdf->writeHTML($template, true);
        $html2pdf->output('Invoive.pdf','D');
        return back();
    }

    public function getThongBao(){
        return view('frontend.thongbao');
    }

    public function getColorProductInfo(Request $request){
        $res = [];
        $id = $request->input('color_id');
        $type = $request->input('type');
        $color = Color::find($id);
        if($color == null) return "";
        $product = $color->product;
        if($product == null) return "";
        if($type == 1)
            return view('frontend.partials.color', ['product'=>$product, 'color'=>$color]);
        else
            return view('frontend.partials.color2', ['obj'=>$product, 'color'=>$color]);
    }

}
