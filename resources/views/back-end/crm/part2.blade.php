<div class="panel panel-default">
	<div class="panel-heading">
		<h4 class="panel-title">
			<a data-toggle="collapses" data-parent="#accordion" href="#thong-tin-benh-an">Thông tin bệnh án </a>
		</h4>
	</div>
	<div id="thong-tin-benh-an" class="panel-collapses collapses">
		<div class="panel-body">
			<table class="table table-sm mb-0 table-dashboard thong-so-mat">
				<thead >
					<tr>
						<th style="width: 100px"></th>
						<th style="width: 460px;">Thông số kính cũ</th>
						<th>Thị lực</th>
						<th style="width: 460px;">Thông số kính mới</th>
						<th>Thị lực có kính mới</th>
						<th>Nhãn áp</th>
					</tr>
				</thead>
				<tbody>
					<tr class="btn-reveal-trigger">
						<td class="align-middle"><span>Mắt Phải</span></td>
						<td class="align-middle" data-title="Thông số kính cũ"><input type="text" class="form-control" id="" name="mp_ts" value="{{isset($obj) ? $obj->mp_ts : old('mp_ts')}}"></td>
						<td class="align-middle" data-title="Thị lực"><input type="text" class="form-control" id="" name="mp_thiluc" value="{{isset($obj) ? $obj->mp_thiluc : old('mp_thiluc')}}"></td>
						<td class="align-middle" data-title="Thông số kính mới"><input type="text" class="form-control" id="" name="mp_ts_moi" value="{{isset($obj) ? $obj->mp_ts_moi : old('mp_ts_moi')}}"></td>
						<td class="align-middle" data-title="Thị lực có kính mới"><input type="text" class="form-control" id="" name="mp_tl_kich" value="{{isset($obj) ? $obj->mp_tl_kich : old('mp_tl_kich')}}"></td>
						<td class="align-middle" data-title="Nhã áp"><input type="text" class="form-control" id="" name="mp_nhanap" value="{{isset($obj) ? $obj->mp_nhanap : old('mp_nhanap')}}"></td>
					</tr>
					<tr class="btn-reveal-trigger">
						<td class="align-middle"><span>Mắt Trái</span></td>
						<td class="align-middle" data-title="Thông số kính cũ"><input type="text" class="form-control" id="" name="mt_ts" value="{{isset($obj) ? $obj->mt_ts : old('mt_ts')}}"></td>
						<td class="align-middle" data-title="Thị lực"><input type="text" class="form-control" id="" name="mt_thiluc" value="{{isset($obj) ? $obj->mt_thiluc : old('mt_thiluc')}}"></td>
						<td class="align-middle" data-title="Thông số kính mới"><input type="text" class="form-control" id="" name="mt_ts_moi" value="{{isset($obj) ? $obj->mt_ts_moi : old('mt_ts_moi')}}"></td>
						<td class="align-middle" data-title="Thị lực có kính mới"><input type="text" class="form-control" id="" name="mt_tl_kich" value="{{isset($obj) ? $obj->mt_tl_kich : old('mt_tl_kich')}}"></td>
						<td class="align-middle" data-title="Nhã áp"><input type="text" class="form-control" id="" name="mt_nhanap" value="{{isset($obj) ? $obj->mt_nhanap : old('mt_nhanap')}}"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
