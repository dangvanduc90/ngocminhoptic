<div class="panel panel-default">
	<div class="panel-heading">
		<h4 class="panel-title">
			<a class="active" data-toggle="collapses" data-parent="#accordion" href="#thong-tin-don-hang">Thông tin đơn hàng</a>
		</h4>
	</div>
	<div id="thong-tin-don-hang" class="panel-collapses collapses in">
		<div class="panel-body">
			<div class="row">
				<div class="col-md-6 thong-tins">
					<div class="name-plu">
						<div class="form-group">
							<label for="ht-admin"  class="control-label">Họ tên</label>
							<div class="input-contenr">
								<span class="icon_checkout ico-name"></span>
								<input type="text" class="form-control" id="ht-admin" name="hovaten" value="{{isset($obj) ? $obj->hovaten : old('hovaten')}}" placeholder="Họ tên" required>
							</div>
						</div>
						<div class="form-group">
							<label for="mdh-admin"  class="control-label">Mã đơn</label>
							<div class="input-contenr">
								<span class="icon_checkout ico-plu"></span>
								<input type="text" class="form-control" id="mdh-admin" name="madon" value="{{isset($obj) ? $obj->madon : 'MDH_' .time()}}" placeholder="Mã đơn" required>
							</div>
						</div>
					</div>
					<div class="date-phome">
						<div class="form-group">
							<label for="sdt-admin"  class="control-label">Số điện thoại</label>
							<div class="input-contenr">
								<span class="icon_checkout ico-sdt"></span>
								<input type="tel" class="form-control" id="sdt-admin" name="sdt" pattern="[0-9]*" value="{{isset($obj) ? $obj->sdt : old('sdt')}}" placeholder="Điện thoại">
							</div>
						</div>
						<div class="form-group">
							<label for="pd-admin"class="control-label">Pd</label>
							<div class="input-contenr">
								<span class="icon_checkout ico-pd"></span>
								<input type="number" id="pd-admin" class="input-text" step="1" min="0" max="9999" name="pd" value="{{isset($obj) ? $obj->pd : old('pd')}}" pattern="[0-9]*" inputmode="numeric" placeholder="Thông số PD">
							</div>
						</div>
					</div>
					<div class="date-phome">
						<div class="form-group">
							<label for="ngmh-admin" class="control-label">Ngày khám</label>
							<div class="input-contenr">
								<span class="icon_checkout ico-date"></span>
								<span class="tooltiptexts">20/09/2019</span>
								<input type="text" class="form-control datepicker" id="ngmh-admin" name="ngaykham" value="{{isset($obj) ? $obj->ngaykham : date('d/m/Y')}}" placeholder="Ngày khám">
							</div>
						</div>
						<div class="form-group">
							<label for="nghk-admin" class="control-label">Ngày hẹn khám lại</label>
							<div class="input-contenr">
								<span class="icon_checkout ico-date"></span>
								<span class="tooltiptexts">20/09/2019</span>
								<input type="text" class="form-control datepicker" id="nghk-admin" name="ngayhen" value="{{isset($obj) ? $obj->ngayhen : old('ngayhen')}}" placeholder="Ngày hẹn khám lại">
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 thong-tins">
					<div class="form-group">
						<label for="ngmh-admin" class="control-label">Địa chỉ</label>
						<div class="input-contenr">
							<span class="icon_checkout ico-dia-chi"></span>
							<input type="text" class="form-control" id="" name="diachi" value="{{isset($obj) ? $obj->diachi : old('diachi')}}" placeholder="Địa chỉ">
						</div>
					</div>
					<div class="form-group">

						<label for="pd-admin"class="control-label">Nội dung</label>
						<div class="input-contenr">
							<span class="icon_checkout ico-pd"></span>
							<textarea name="noidung" id="" cols="30" rows="10" placeholder="Nội dung">{{isset($obj) ? $obj->noidung : old('noidung')}}</textarea>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
