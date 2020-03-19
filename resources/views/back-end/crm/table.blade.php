<div class="tab-noi-dung clearfix">
	<div class="col-md-12">
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#tab-submit-1">Bệnh án</a></li>
			<li><a data-toggle="tab" href="#tab-submit-2">Lịch hẹn</a></li>
		</ul>
		<div class="tab-content">
			<div id="tab-submit-1" class="tab-pane fade in active">
				<div class="row">
					<div class="clearfix">
						<div class="col-md-3 col-sm-2"></div>
						<div class="form-filter clearfix col-md-6 col-sm-8">
							<div class="forms-control">
							<input type="text" id="s_str" value="" placeholder="Từ khóa tìm kiếm">
						</div>
						</div>
						<div class="col-md-3 col-sm-2"></div>
					</div>
					<div class="form-tim-kiem-theo-ngay clearfix">
						<div class="col-md-3 col-sm-2"></div>
						<div class="col-md-3 col-sm-4">
							<div class="form-group">
								<div class="ma-hoa-don forms-control">
									<input id="date-ngtr-m1" type="text" id="s_fromDate" value="" placeholder="Từ ngày">
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-4">
							<div class="form-group">
								<div class="ho-ten forms-control">
									<input id="date-ngts-m1" type="text" id="s_endDate" value="" placeholder="Đến ngày">
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-2"></div>
					</div>

					
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-sm mb-0 table-dashboard">
							<thead>
								<tr>
									<th class="ma">Mã đơn hàng</th>
									<th class="th">Ngày tháng</th>
									<th class="ht">Họ tên</th>
									<th class="sd">Số điện thoại</th>
									<th class="pd">PD</th>
									<th class="kmp">Kính MP</th>
									<th class="kmt">Kính MT</th>
								</tr>
							</thead>
							<tbody id="tbody_benhan">
								@include('back-end.crm.table-benh-an')
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div id="tab-submit-2" class="tab-pane fade">
				<div class="row">
					
					<div class="clearfix">
						<div class="col-md-3 col-sm-2"></div>
						<form role="form" class="form-filter form-horizontal clearfix col-md-6 col-sm-8" action="" method="POST">
							<div class="forms-control">
								<input type="text" id="o_str" value="" placeholder="Từ khóa tìm kiếm">
							</div>
							<input type="hidden" name="" value="">
						</form>
						<div class="col-md-3 col-sm-2"></div>
					</div>
					<form role="form" class="form-tim-kiem-theo-ngay clearfix" style="clear: both;" action="" method="POST">
						<div class="col-md-3 col-sm-2"></div>
						<div class="col-md-3 col-sm-4">
							<div class="form-group">
								<div class="ma-hoa-don forms-control">
									<input id="date-ngtr-m1" type="text" id="o_fromDate" value="" placeholder="Từ ngày">
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-4">
							<div class="form-group">
								<div class="ho-ten forms-control">
									<input id="date-ngts-m1" type="text" id="o_endDate" value="" placeholder="Đến ngày">
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-2"></div>
					</form>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-sm mb-0 table-dashboard">
							<thead >
								<tr>
									<th class="kmp">Ngày</th>
									<th class="pd">Giờ</th>
									<th class="ma">Họ và tên</th>
									<th class="th">Địa chỉ</th>
									<th class="kmp">Email</th>
									<th class="sd">SĐT</th>
									<th class="sd">Cơ sở</th>
									<th class="ht">Nội dung</th>
								</tr>
							</thead>
							<tbody id="tbody_order">
								@include('back-end.crm.table-order')
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>