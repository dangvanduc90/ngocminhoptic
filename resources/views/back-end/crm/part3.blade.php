<div class="panel panel-default">
	<div class="panel-heading">
		<h4 class="panel-title">
			<a data-toggle="collapses" data-parent="#accordion" href="#quan-ly-han">Thông tin quản lý bán hàng</a>
		</h4>
	</div>
	<div id="quan-ly-han" class="panel-collapses collapses">
		<div class="panel-body">
            <button type="submit" class="btn btn-primary" form="form-exports-sanpham" id="form-exports-sanpham-submit">Xuất excel sản phẩm</button>
            <a class="btn btn-primary" href="{{ route('san-pham.create') }}" target="_blank">Nhập sản phẩm</a>
            <br>
			<table class="table table-sm mb-0 table-dashboard thong-so-mat" id="table_sanpham">
				<thead >
					<tr>
						<th style="text-align: left;">STT</th>
						<th style="width: 600px;">Sản phẩm</th>
						<th>Giá</th>
						<th>Số lượng</th>
						<th>Thành tiền</th>
					</tr>
				</thead>
				@if(!isset($obj))
				<tbody id="tbody_sp">
					@for($j = 1; $j <= $num; $j++)
					<tr class="btn-reveal-trigger">
						<td class="align-middle" style="padding-left: 8px;" data-title="STT">{{$j}}</td>
						<td class="align-middle" data-title="Sản phẩm" >
							<select data-id="{{$j}}" id="sanpham_{{$j}}" class="form-control sanpham_kham" name="khambenh_id[]" required>
								<option data-price="0" label=""></option>
								@foreach($sanphams as $sanpham)
								<option data-price="{{$sanpham->price}}" value="{{$sanpham->id}}">{{$sanpham->name}}</option>
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
					</tr>
					@endfor
				</tbody>
				@else
				<tbody id="tbody_sp">
					@php
					$j = 1;
					@endphp
					@foreach($obj->donhangkhams()->get() as $donhang)
					<tr class="btn-reveal-trigger">
						<td class="align-middle">{{$j}}</td>
						<td class="align-middle" data-title="Sản phẩm">
							<select data-id="{{$j}}" id="sanpham_{{$j}}" class="form-control sanpham_kham" name="khambenh_id[]" required>
								<option data-price="0" label=""></option>
								@foreach($sanphams as $sanpham)
								<option data-price="{{$sanpham->price}}" value="{{$sanpham->id}}" {{$donhang->khambenh_id == $sanpham->id ? 'selected' : ''}}>{{$sanpham->name}}</option>
								@endforeach
							</select>
						</td>
						<td class="align-middle" data-title="Giá">
							<input type="text" class="form-control" id="gia_{{$j}}" name="gia[]" value="{{$donhang->gia}}" readonly>
						</td>
						<td class="align-middle" data-title="Số lượng">
							<input data-id="{{$j}}" type="number" class="form-control soluong_sp" id="soluong_{{$j}}" name="soluong[]" value="{{$donhang->soluong}}" required>
						</td>
						<td class="align-middle" data-title="Thành tiền">
							<input type="text" class="form-control" id="thanhtien_{{$j}}" name="thanhtien[]" value="{{$donhang->thanhtien}}" readonly>
						</td>
					</tr>
					@php
					$j++;
					@endphp
					@endforeach
				</tbody>
				@endif
			</table>
			<input type="hidden" id="sp_count" value="{{$j}}">
			<div class="them-moi-th">
				<a style="cursor: pointer" class="btn btn-primary add_product">Thêm sản phẩm</a>
			</div>
			<div class="quan-ly-hang">
				<div class="row">
					<div class="quan-ly col-md-5">
						<div class="form-group">
							<label class="control-label" for="khmi-admin">Khuyến mại</label>
							<div class="input-contenr">
								<input type="number" class="form-control" id="khmi-admin" name="khieunai" value="{{isset($obj) ? $obj->khieunai : old('khieunai')}}">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label" for="datcoc-admin">Đặt cọc</label>
							<div class="input-contenr">
								<input type="number" class="form-control" id="datcoc-admin" name="datcoc" value="{{isset($obj) ? $obj->datcoc : old('datcoc')}}">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label" for="conno-admin">Công nợ</label>
							<div class="input-contenr">
								<input type="number" class="form-control" id="conno-admin" name="congno" value="{{isset($obj) ? $obj->congno : old('congno')}}">
							</div>
						</div>

					</div>
					<div class="quan-ly col-md-7">

						<div class="ghi-chu">
							<div class="form-group">
								<label class="control-label" for="ghichu-admin">Ghi chú</label>
								<div class="input-contenr">
									<textarea name="ghichu" id="" cols="30" rows="10" id="ghichu-admin" >{{isset($obj) ? $obj->ghichu : old('ghichu')}}</textarea>
								</div>
							</div>
						</div>
						<div class="ghi-chu">
							<p style="text-align: right; color: red;">* Thanh toán bằng Việt Nam Đồng.</p></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
