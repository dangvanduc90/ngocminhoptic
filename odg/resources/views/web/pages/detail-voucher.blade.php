@extends('web.layouts.main')

@section('title')
Voucher FLC 2020 siêu rẻ áp dụng hệ thống FLC trên toàn quốc
@parent
@stop

@section('css')
@stop

@section('content')
<div id="content">
	<div class="banner-slider">
		<ul id="hotelGallery" class="content-slider">
			<li data-thumb="{{asset('frontend/images/banner-1.jpg')}}" data-src="{{asset('frontend/images/banner-1.jpg')}}">
				<img src="{{asset('frontend/images/banner-1.jpg')}}" />
			</li>
			<li data-thumb="{{asset('frontend/images/banner-2.jpg')}}" data-src="{{asset('frontend/images/banner-2.jpg')}}">
				<img src="{{asset('frontend/images/banner-2.jpg')}}" />
			</li>
			<li data-thumb="{{asset('frontend/images/banner-3.jpg')}}" data-src="{{asset('frontend/images/banner-3.jpg')}}">
				<img src="{{asset('frontend/images/banner-3.jpg')}}" />
			</li>
			<li data-thumb="{{asset('frontend/images/banner-1.jpg')}}" data-src="{{asset('frontend/images/banner-1.jpg')}}">
				<img src="{{asset('frontend/images/banner-1.jpg')}}" />
			</li>
			<li data-thumb="{{asset('frontend/images/banner-2.jpg')}}" data-src="{{asset('frontend/images/banner-2.jpg')}}">
				<img src="{{asset('frontend/images/banner-2.jpg')}}" />
			</li>
			<li data-thumb="{{asset('frontend/images/banner-3.jpg')}}" data-src="{{asset('frontend/images/banner-3.jpg')}}">
				<img src="{{asset('frontend/images/banner-3.jpg')}}" />
			</li>
		</ul>
		<div class=" btn btn-xem-tat-ca">
			<a href="file:///D:/xampp/htdocs/vnstay/khachsan.html#lg=1&slide=3" title="Xem tất cả">Xem tất cả</a>
		</div>
	</div>
	<div class="container">
		<div class="content-voucher row">
			<div class="content-left col-md-8">
				<div class="section voucher-left">
					<div class="title">
							<h2>Voucher FLC 2020 siêu rẻ áp dụng hệ thống
							FLC trên toàn quốc</h2>
					</div>
					<div class="star-ks">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
					</div>
					<div class="detail-voucher">
							<div class="voucher-flc">
								<i>
									Voucher FLC 2020 phòng nghỉ + ăn sáng áp dụng hệ thống FLC trên toàn quốc
									1 người lớn
								</i>
							</div>
							<p class="provided">Cung cấp bởi:</p>
							<p>FLC Grand Hotel Hạ Long  |  FLC Grand Hotel Sầm Sơn   |   FLC Luxury Hotel Quy Nhơn</p>
							<p>FLC Luxury Hotel Sầm Sơn   |   FLC Luxury Resort Quy Nhơn   |   FLC Luxury Resort Sầm Sơn</p>
					</div>
				</div>
				<div class="section buy-voucher">
					<div class="title-voucher">
						<h2>Mua ngay</h2>
					</div>
					<div class="item-voucher">
						<div class="item">
							<span class="combo-voucher">Combo 2 ngày 1 đêm / 1 người lớn</span>
							<div class="price-voucher">
								<span class="sale">1.290.000Đ</span>
								<span class="price">990.000Đ</span>
							</div>
							<button type="button" class="buy-now">Buy Now</button>
						</div>
						<div class="item">
							<span class="combo-voucher">Combo 2 ngày 1 đêm / 1 người lớn</span>
							<div class="price-voucher">
								<span class="sale">1.290.000Đ</span>
								<span class="price">990.000Đ</span>
							</div>
							<button type="button" class="buy-now">Buy Now</button>
						</div>
					</div>
				</div>
				<div class="section information">
					<div class="title-voucher">
						<h2>Thông tin chi tiết</h2>
					</div>
					<p>Nếu bạn đang lên kế hoạch cho 1 chuyến du lịch tại hệ thống FLC Sầm Sơn, FLC Hạ Long hay FLC Quy Nhơn thì mua Voucher FLC 2020  sẽ là lựa chọn hoàn hảo dành cho bạn. Với những lợi ích vô cùng thiết thực: </p>
					<p>Giúp tiết kiệm đến hơn 50% chi phí đặt phòng so với giá thông thường </p>
					<p>Hạn sử dụng cực dài, áp dụng từ ngày 1/1/2020 - 31/12/2020, mang lại lợi thế rất lớn khi sử dụng Voucher vào mùa cao điểm. Luôn yên tâm về quỹ phòng trống dành cho bạn để tận hưởng 1 chuyến du lịch trọn vẹn nhất. 
					</p>
					<p>Voucher FLC 2020 có thể áp dụng linh hoạt cho hệ thống FLC trên toàn quốc: FLC Luxury Hotel Sầm Sơn, FLC Grand Hotel Sầm Sơn, FLC Luxury Hotel Quy Nhơn, FLC Vĩnh Phúc và FLC Grand Hotel Hạ Long.</p>
				</div>
				<div class="section include">
					<div class="title-voucher">
						<h2>Bao gồm:</h2>
					</div>
					<p>Tận hưởng kỳ nghỉ 3N2Đ hoặc 2N1Đ tại hệ thống  khách sạn 5* đẳng cấp của FLC Sầm Sơn - FLC Vĩnh Phúc - FLC Quy Nhơn - FLC Hạ Long. </p>
					<p>Bữa ăn sáng Buffet mỗi ngày theo tiêu chuẩn, miễn phí  nước khoáng, trà trong phòng, sử dụng Internet tốc độ cao </p>
					<p>Sử dụng không giới hạn tiện ích bể bơi và phòng tập Gym.</p>
					<p>Miễn phí xe điện phục vụ trong khu nghỉ dưỡng </p>
				</div>
				<div class="section quy-dinh">
					<div class="title-voucher">
						<h2>Các quy định phụ thu <br> và quy định chung</h2>
						<i>ĐVT: VNĐ/phòng/đêm </i>
					</div>
					<div class="room">
						<table class="table-room" border="1" width="100%">
							<thead>
								<tr>
									<th>Nội dung</th>
									<th>FLC Vĩnh Phúc</th>
									<th>FLC LUXURY/GRAND HOTEL SẦM SƠN</th>
									<th>FLC LUXURY HOTEL QUY NHƠN </th>
									<th>FLC GRAND HOTEL HẠ LONG </th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Trong tuần cao điểm</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>300.000</td>
								</tr>
								<tr>
									<td>Phụ thu cao điểm</td>
									<td>0</td>
									<td>500.000</td>
									<td>500.000</td>
									<td>800.000</td>
								</tr>
								<tr>
									<td>Phụ thu cuối tuần</td>
									<td>400.000</td>
									<td>500.000</td>
									<td>600.000</td>
									<td>700.000</td>
								</tr>
								<tr>
									<td>Phụ thu lễ tết</td>
									<td>800.000</td>
									<td>1.000.000</td>
									<td>1.200.000</td>
									<td>1.700.000</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class=room-detail>
						<h5><i>Phụ thu thêm người và giường phụ:</i></h5>
						<table border="1" width="100%">
								<thead>
									<tr>
										<th>Chi tiết</th>
										<th>Giá tiền</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Giường phụ người lớn ( từ 12 tuổi trở lên) </td>
										<td>950.000</td>
									</tr>
									<tr>
										<td>TE (6 - 11 tuổi) có giường phụ</td>
										<td>600.000</td>
									</tr>
									<tr>
										<td>TE (6 - 11 tuổi) không có giường phụ</td>
										<td>250.000</td>
									</tr>
									<tr>
										<td>TE (<6 tuổi) Chung giường bố mẹ</td>
										<td>Free</td>
									</tr>
								</tbody>
						</table>
					</div>
					<div class="policy">
						<p>Các chính sách phụ thu nâng cấp hạng phòng sẽ tùy thuộc vào hạng phòng và khu <br>
							nghỉ dưỡng Qúy khách hàng lựa chọn <br>
							Xem chi tiết tại: <a href="#">Voucher FLC 2020</a></p>
					</div>
				</div>
			</div>
			<div class="content-right col-md-4">
				<div class="form-voucher">
					<form action="Voucher">
						<div class="form-grounp">
							<input type="text" placeholder="Điểm đến">
						</div>
						<div class="form-grounp date-form">
							<span class="icon-date"></span>
							<input type="text"placeholder="Hạng sao">
						</div>
						<div class="form-grounp">
							<button type="button" class="btn search-form">Tìm Combo/Voucher</button>
						</div>
					</form>
				</div>
				<div class="form-dky">
					<form action="voucher_submit">
						<div class="form-grounp">
							<input type="text" name="your-name" placeholder="Họ tên">
						</div>
						<div class="form-grounp">
							<input type="text" name="phone" placeholder="Số điện thoại">
						</div>
						<div class="form-grounp">
							<input type="email" name="email" placeholder="Email">
						</div>
						<div class="form-grounp">
							<textarea name="message" rows="5" placeholder="Tin nhắn"></textarea>
						</div>
						<button type="button">Gửi</button>
					</form>
				</div>
				<div class="sidebar-voucher">
					<div class="title-voucher">
						<h2>Có thể bạn thích:</h2>
					</div>
					<div class="item">
						<div class="img-voucher">
							<a href="#"><img src="{{asset('frontend/images/banner-1.jpg')}}" alt=""></a>
						</div>
						<div class="text-box">
							<div class="text-header">
								<h3>VOUCHER VINPEARL 2020</h3>
							</div>
							<div class="text-content">
								<p>Siêu rẻ áp dụng toàn quốc</p>
							</div>
							<button type="button">Chi tiết</button>
						</div>
					</div>
					<div class="item">
						<div class="img-voucher">
							<a href="#"><img src="{{asset('frontend/images/banner-1.jpg')}}" alt=""></a>
						</div>
						<div class="text-box">
							<div class="text-header">
								<h3>VOUCHER VINPEARL 2020</h3>
							</div>
							<div class="text-content">
								<p>Siêu rẻ áp dụng toàn quốc</p>
							</div>
							<button type="button">Chi tiết</button>
						</div>
					</div>
					<div class="item">
						<div class="img-voucher">
							<a href="#"><img src="{{asset('frontend/images/banner-1.jpg')}}" alt=""></a>
						</div>
						<div class="text-box">
							<div class="text-header">
								<h3>VOUCHER VINPEARL 2020</h3>
							</div>
							<div class="text-content">
								<p>Siêu rẻ áp dụng toàn quốc</p>
							</div>
							<button type="button">Chi tiết</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@stop


@section('js')
@stop