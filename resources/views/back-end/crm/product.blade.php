<tr class="btn-reveal-trigger">
	<td class="align-middle">{{$j}}</td>
    <td class="align-middle" data-title="Mã sản phẩm">
        <input type="text" class="form-control debounce" id="masp_{{$j}}" name="masp[]" value="{{$sanpham->masp}}">
    </td>
	<td class="align-middle" data-title="Sản phẩm">
		<select data-id="{{$j}}" id="sanpham_{{$j}}" class="form-control sanpham_kham" name="khambenh_id[]" required>
			<option data-price="0" label=""></option>
			@foreach($sanphams as $sanpham)
			<option data-price="{{$sanpham->price}}" data-masp="{{$sanpham->masp}}" value="{{$sanpham->id}}">{{$sanpham->name}}</option>
			@endforeach
		</select>
	</td>
	<td class="align-middle" data-title="Giá">
		<input type="text" class="form-control" id="gia_{{$j}}" name="gia[]" value="" readonly>
	</td>
	<td class="align-middle" data-title="Số lượng">
		<input data-id="{{$j}}" type="number" class="form-control soluong_sp" id="soluong_{{$j}}" name="soluong[]" value="0" required min="0">
	</td>
	<td class="align-middle" data-title="Thành tiền">
		<input type="text" class="form-control" id="thanhtien_{{$j}}" name="thanhtien[]" value="" readonly>
	</td>
    <td>
        <button type="button" class="btn btn-primary remove_product">Xóa</button>
    </td>
</tr>
