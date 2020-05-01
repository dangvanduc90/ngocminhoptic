<?php

namespace App\Http\Controllers;

use App\Admin\Bank;
use Illuminate\Http\Request;
use Cart;
use App\Admin\Product;
use App\Admin\Color;
use App\Admin\Giohang;
use App\Admin\Donhang;
use Illuminate\Support\Facades\Log;
use Spipu\Html2Pdf\Html2Pdf;
use Illuminate\Support\Facades\Storage;

class CartController extends Controller
{
	public function ajaxAdd(Request $request)
	{
		$data = [];
		$data['msg'] = "";
		$data['sum'] = Cart::getTotalQuantity();
		$product_id = $request->input('product_id');
		$color_id = $request->input('color_id');
		$qty = $request->input('qty_product');
		$product = Product::where('id', $product_id)->where('status',1)->first();
		if($product == null){
			$data['msg'] = "Sản phẩm không tồn tại hoặc đã tạm ngưng bán hàng. Vui lòng kiểm tra lại !";
			return $data;
		}
		$color = Color::find($color_id);
		if($color == null){
			$data['msg'] = "Màu sản phẩm không tồn tại!";
			return $data;
		}
		if(intval($qty) <= 0){
			$data['msg'] = "Số lượng sản phẩm phải lớn hơn 0";
			return $data;
		}
		Cart::add(array(
			'id' => $product->id . '_' . $color->id,
			'name' => $product->name." (".$color->name.")",
			'price' => $product->price,
			'quantity' => $qty,
			'attributes' => array(
                'product_id' => $product->id,
                'color_id' => $color->id,
                'color_name' => $color->name,
                'color_name_en' => $color->name_en,
                'code_color' => $color->code_color,
                'slug' => $product->slug,
                'image' => $product->avatar->product_image,
            )
		));
		$data['msg'] = "Thêm vào giỏ hàng thành công!";
		$data['sum'] = Cart::getTotalQuantity();
		return $data;
	}

	public function ajaxUpdate(Request $request)
	{
		$data = [];
		$data['status'] = 0;

		$color_id = $request->input('color_id');
		$qty = $request->input('qty_product');
		if(intval($qty) <= 0){
			$data['msg'] = "Số lượng sản phẩm phải lớn hơn 0";
			return $data;
		}
        $color = Color::find($color_id);
        if($color == null){
			$data['msg'] = "Màu sản phẩm không tồn tại hoặc đã tạm ngưng bán hàng. Vui lòng kiểm tra lại !";
			return $data;
		}
		$product = Product::find($request->input('product_id'));
		if($product == null){
			$data['msg'] = "Sản phẩm không tồn tại hoặc đã tạm ngưng bán hàng. Vui lòng kiểm tra lại !";
			return $data;
		}
		$cartId = $request->input('id');
		Cart::remove($cartId);

        Cart::add(array(
            'id' => $product->id . '_' . $color->id,
            'name' => $product->name." (".$color->name.")",
            'price' => $product->price,
            'quantity' => $qty,
            'attributes' => array(
                'product_id' => $product->id,
                'color_id' => $color->id,
                'color_name' => $color->name,
                'color_name_en' => $color->name_en,
                'code_color' => $color->code_color,
                'slug' => $product->slug,
                'image' => $product->avatar->product_image,
            )
        ));

		$data['status'] = 1;
		$data['sum'] = number_format(Cart::get($request->input('id'))->getPriceSum());
		$data['total'] = number_format(Cart::getTotal());
		return $data;
	}

	public function removeProduct(Request $request){
		$id = $request->color_id;
		Cart::remove($id);
		return back();

	}

	public function thanhtoan(){
	    $banks = Bank::all();
		return view('frontend.thanhtoan', compact('banks'));
	}

	public function postThanhToan(Request $request){
        $request->validate([
            'stk' => 'required',
            'bank_id' => 'required|integer|min:1',
        ], [
            'bank_id.min' => 'Must choose bank'
        ]);
		$total = Cart::getTotal();
		if($total <= 0){
			return back();
		}
		$data = $request->all();
		$data['status'] = 0;

		$donhang = Donhang::create($data);
		$items = Cart::getContent();
		foreach($items as $item){
			$_data = [];
			$_data['color_id'] = $item->id;
			$_data['price'] = $item->price;
			$_data['amount'] = $item->quantity;
			$_data['sum'] = $item->getPriceSum();
			$_data['donhang_id'] = $donhang->id;
			Giohang::create($_data);
		}
		session()->put('donhang', $donhang);
		Cart::clear();
		return redirect()->route('thongbao.get');

	}

	public function getGioHang(){
		return view('frontend.giohang');
	}

	public function download(){
		$obj = session()->get('donhang');
		if(!isset($obj) || $obj == null) abort(404);
		$type = $obj->type;
		$tongtien = $obj->giohangs()->sum('sum');
		if($type == 1) $ht = "Nhận hàng thanh toán";
		else $ht = "Thanh toán rồi nhận hàng";
		$template = Storage::disk('template')->get('hoa-don.php');
		$current_date = date('d/m/Y');
		$template = str_replace('_madon', $obj->id, $template);
		$template = str_replace('_ngayhomnay', $current_date, $template);
		$template = str_replace('_tenkhachhang', $obj->name, $template);
		$template = str_replace('_sdtkhachhang', $obj->phone, $template);
		$template = str_replace('_diachikhachhang', $obj->address, $template);
		$template = str_replace('_emailkhachhang', $obj->email, $template);
		$template = str_replace('stk', $obj->stk, $template);
		$template = str_replace('bank', $obj->bank_name, $template);
		$template = str_replace('_httt', $ht, $template);
		$template = str_replace('_ghichu', $obj->content, $template);
		$template = str_replace('_tongtien',number_format($tongtien), $template);

		$j = 1;
		$_html = "";
		foreach ($obj->giohangs()->get() as $giohang) {
			$color = $giohang->color;
			if($color != null){
				$product = $color->product;
				if($product != null){
					$_html  .= "<tr><td style='text-align:center; font-size: 9px;''>";
					$_html .= $j;
					$_html  .= "</td><td style='text-align:center; font-size: 9px;''>";
					$_html .= $product->name." (".$color->name.")";
					$_html  .= "</td><td style='text-align:center; font-size: 9px;''>";
					$_html .= $giohang->amount;
					$_html  .= "</td><td style='text-align:center; font-size: 9px;''>";
					$_html .= number_format($giohang->price);
					$_html  .= "</td><td style='text-align:center; font-size: 9px;''>";
					$_html .= number_format($giohang->sum);
					$_html  .= "</td></tr>";
					$j++;
				}

			}


		}
		$template = str_replace('_dataSanPham', $_html, $template);
		$html2pdf = new HTML2PDF('P', 'A4', 'fr');
		$html2pdf->pdf->SetDisplayMode('fullpage');
		$html2pdf->writeHTML($template, true);
		$html2pdf->output('donhang.pdf','D');
		return back();
	}
}
