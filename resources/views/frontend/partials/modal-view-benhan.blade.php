@if(isset($obj))
@php
$tongtien = $obj->donhangkhams()->sum('thanhtien');
$khuyenmai = floatval($obj->khieunai);
$tongcong = floatval($tongtien) - $khuyenmai;
@endphp
<div class="modal fade modet-list-conter thong-tin-khach-hang" id="view-informations-client" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content clearfix">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<div class="thong-tin">
					<h4 class="modal-title">{{ trans('menu.thongtinbenhnhan') }}</h4>
				</div>
			</div>
			<div class="modal-body clearfix">
				<div class="content-information">
					<h3 class="name">{{$obj->hovaten}}</h3>
				</div>
				<div class="row">
					<div class="col-md-6 content-table">
						<div class="form-group">
							<label class="control-label">{{ trans('menu.mahoadon') }}:</label>
							<input type="text" name="" value="{{$obj->madon}}" readonly="">
						</div>
					</div>

					<div class="col-md-6 content-table">
						<div class="form-group">
							<label class="control-label">{{ trans('menu.ngaykhamlai') }}:</label>
							<input type="text" name="" value="{{$obj->ngayhen}}" readonly="">
						</div>
					</div>
					<div class="col-md-6 content-table">
						<div class="form-group">
							<label class="control-label">PD:</label>
							<input type="text" name="" value="{{$obj->pd}}" readonly="">
						</div>
					</div>
					<div class="col-md-6 content-table">
						<div class="form-group">
							<label class="control-label">{{ trans('menu.dienthoai') }}:</label>
							<input type="text" name="" value="{{$obj->sdt}} " readonly="">
						</div>
					</div>
					<div class="col-md-6 content-table">
						<div class="form-group">
							<label class="control-label">{{ trans('menu.diachi') }}:</label>
							<input type="text" name="" value="{{$obj->diachi}}" readonly="">
						</div>
					</div>
					<div class="text-kqua col-md-12">
						<h2><span>{{ trans('menu.kiemtrathiluc') }}</span></h2>
						<div class="row">
							<div class="col-md-6">
								<p>{{ trans('menu.matphai') }}</p>
								<div class="noidung">
									<div class="form-group ">
										<label class="control-label">{{ trans('menu.thongsokinhcu') }} :</label>
										<input type="text" name="" value="{{$obj->mp_ts}}" readonly="">
									</div>
									<div class="form-group">
										<label class="control-label">{{ trans('menu.thiluc') }} :</label>
										<input type="text" name="" value="{{$obj->mp_thiluc}}" readonly="">
									</div>

									<div class="form-group ">
										<label class="control-label">{{ trans('menu.thongsokinhmoi') }} :</label>
										<input type="text" name="" value="{{$obj->mp_ts_moi}}" readonly="">
									</div>
									<div class="form-group">
										<label class="control-label">{{ trans('menu.thiluccokich') }} :</label>
										<input type="text" name="" value="{{$obj->mp_tl_kich}}" readonly="">
									</div>
									<div class="form-group">
										<label class="control-label">{{ trans('menu.nhanap') }} :</label>
										<input type="text" name="" value="{{$obj->mp_nhanap}}" readonly="">
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<p>{{ trans('menu.mattrai') }}</p>
								<div class="noidung">
									<div class="form-group ">
										<label class="control-label">{{ trans('menu.thongsokinhcu') }} :</label>
										<input type="text" name="" value="{{$obj->mt_ts}}" readonly="">
									</div>
									<div class="form-group">
										<label class="control-label">{{ trans('menu.thiluc') }} :</label>
										<input type="text" name="" value="{{$obj->mt_thiluc}}" readonly="">
									</div>

									<div class="form-group ">
										<label class="control-label">{{ trans('menu.thongsokinhmoi') }} :</label>
										<input type="text" name="" value="{{$obj->mt_ts_moi}}" readonly="">
									</div>
									<div class="form-group">
										<label class="control-label">{{ trans('menu.thiluccokich') }} :</label>
										<input type="text" name="" value="{{$obj->mt_tl_kich}}" readonly="">
									</div>
									<div class="form-group">
										<label class="control-label">{{ trans('menu.nhanap') }} :</label>
										<input type="text" name="" value="{{$obj->mt_nhanap}}" readonly="">
									</div>
								</div>
							</div>
						</div>
						<h2><span>{{ trans('menu.hoadonbanhang') }}</span></h2>
						<div class="table-responsive">
							<table class="table table-sm mb-0 table-dashboard">
								<thead >
									<tr>
										<th>{{ trans('menu.stt') }}</th>
										<th>{{ trans('menu.sanpham') }}</th>
										<th>{{ trans('menu.soluong') }}</th>
										<th>{{ trans('menu.dongia') }}</th>
										<th>{{ trans('menu.thanhtien') }}</th>
									</tr>
								</thead>
								@php
								$j = 1;
								@endphp
								<tbody>
									@foreach ($obj->donhangkhams()->get() as $donhang)
									@php
									$sp = $donhang->khambenh;
									if($sp == null) $sp = "";
									else $sp = getName($sp);
									@endphp
									<tr class="btn-reveal-trigger">
										<td class="align-middle"><span>{{$j}}</span></td>
										<td class="align-middle">{{$sp}}</td>
										<td class="align-middle">{{$donhang->soluong}}</td>
										<td class="align-middle">{{number_format($donhang->gia)}}</td>
										<td class="align-middle">
											<span class="">{{number_format($donhang->thanhtien)}}</span>
										</td>
									</tr>
									@endforeach
								</tbody>
							</table>

						</div>
						<div class="price">
							<p class="tong-hang"><span>{{ trans('menu.tongtienhang') }}</span>: {{$tongtien}}    VNĐ</p>
							<p class="khuyen-mai"><span>{{ trans('menu.khuyenmai') }}    </span>: {{$khuyenmai}}    VNĐ</p>
							<p class="tong-gia"><span><strong>Tổng cộng </strong></span>: {{$tongcong}}    VNĐ</p>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" onclick="window.location.href='{{route('benhan.scan',['id'=>$obj->id])}}'">{{ trans('menu.in') }}</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('menu.thoat') }}</button>
			</div>
		</div>
	</div>
</div>
@endif