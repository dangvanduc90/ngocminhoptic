@extends('web.layouts.main')

@section('title')
Khách sạn Hạ Long
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
		<div class="about-hotel row">
			<div class="about-left col-md-8 col-sm-7 col-xs-12">
				<div class="title-hotel">
					<h2 class="title-gt">HOTEL DE LA COUPOLE SAPA</h2>
					<span class="ht-star">
						<i class="fa fa-star" aria-hidden="true"></i>
						<i class="fa fa-star" aria-hidden="true"></i>
						<i class="fa fa-star" aria-hidden="true"></i>
						<i class="fa fa-star" aria-hidden="true"></i>
						<i class="fa fa-star" aria-hidden="true"></i>
					</span>
				</div>
				<div class="map-ht">
					<div class="ht-address">
						<i class="fa fa-map-marker" aria-hidden="true"></i>
						<span>Hùng Thắng, Thành phố Hạ Long, Quảng Ninh</span>
					</div>
					<a class="view-map" href="https://www.google.com/maps/search/Nam+Nghi+Phu+Quoc+Island/@10.3022706,103.8594169,17z/data=!3m1!4b1?hl=vi-VN" target="_blank" title="Xem bản đồ">
						Xem bản đồ
					</a>
				</div>
				<div class="about-details">
					<p>Royal Lotus Ha Long Resort & Villas nằm tại thành phố Hạ Long và chỉ cách trung tâm thương mại Marine Plaza 2,2 km, sân bay quốc tế Cát Bi khoảng 32Km. Khu nghỉ dưỡng này bao gồm 375 phòng ngủ các loại, với đầy đủ các tiện ích, đáp ứng mọi nhu cầu của du khách. </p>
				</div>
			</div>
			<div class="about-right col-md-4 col-sm-5 col-xs-12">
				<form action="khachsan_submit" class="ht-form">
					<div class="form-grounp date-form">
						<span class="icon-date"></span>
						<input type="text" id="datepicker" size="30" placeholder="Ngày nhận phòng">
					</div>
					<div class="form-grounp date-form">
						<span class="icon-date"></span>
						<input type="text" id="datepicker1" size="30" placeholder="Ngày trả phòng">
					</div>
					<div class="form-grounp date-form">
						<button type="button" class="btn update-form">Cập nhật giá</button>
					</div>
				</form>
			</div>
		</div>
		<div class="hang-phong">
			<div class="title-hotel">
				<h2>Hạng phòng</h2>
			</div>
			<div class="content-hp row">
				<div class="slider-hp form-horizontal col-md-5 col-sm-12 col-xs-12">
					<div class="item">
						<ul class="content-slider-hp">
							<li>
								<img src="{{asset('frontend/images/img-hp.png')}}">
							</li>
							<li>
								<img src="{{asset('frontend/images/img-hp.png')}}">
							</li>
							<li>
								<img src="{{asset('frontend/images/img-hp.png')}}">
							</li>
						</ul>
					</div>
					<div class="btn btn-chi-tiet">
						<a href="#" title="Chi tiết">Chi tiết</a>
					</div>
				</div>
				<div class="details-hp col-md-7 col-sm-12 col-xs-12">
					<div class="chi-tiet-hp">
						<div class="header-detail row">
							<h3 class="title-detail">Deluxe Golf View</h3>
							<a class="thong-tin-hp" href="#" title="Thông tin phòng">Thông tin phòng</a>
						</div>
						<div class="content-detail">
							<ul class="tthp-detail">
								<li>
									<a href="#" title="Hướng biển">Hướng biển</a>
								</li>
								<li>
									<a href="#" title="Diện tích">36m²</a>
								</li>
								<li>
									<a href="#" title="Số lượng">Tối đa 3 người lớn + 1 trẻ em</a>
								</li>
								<li>
									<a href="#" title="Số giường">1 giường đôi + 1 giường đơn</a>
								</li>
							</ul>
							<div class="sale-hp">
								<ul class="chi-tiet-sale">
									<li>
										<i class="fa fa-circle" aria-hidden="true"></i>
										<span class="title-sale">Khuyến mãi thấp điểm</span>
										<span class="gia-sale">1.900.000Đ</span>
									</li>
									<li>
										<i class="fa fa-circle" aria-hidden="true"></i>
										<span class="title-sale">Đặt phòng sớm</span>
										<span class="why-sale">?</span>
										<span class="time-sale">Thời gian ở: <strong>12/12/2018 - 31/12/2019</strong></span>
										<span class="gia-sale">1.900.000Đ</span>
									</li>
									<li>
										<i class="fa fa-circle" aria-hidden="true"></i>
										<span class="title-sale">Khuyến mãi thấp điểm</span>
										<span class="why-sale">?</span>
										<span class="gia-sale">1.900.000Đ</span>
									</li>
									<li>
										<i class="fa fa-circle" aria-hidden="true"></i>
										<span class="title-sale">Khuyến mãi thấp điểm</span>
										<span class="gia-sale">1.900.000Đ</span>
									</li>
								</ul>
							</div>
						</div>
						<div class="dat-phong">
							<div class="form-grounp">
								<div class="sal">
									<select name="Số phòng">
										<option value="">Số phòng</option>
										<option value="">2</option>
										<option value="">3</option>
										<option value="">4</option>
										<option value="">5</option>
									</select>
									<span class="icons-dow"><img src="{{asset('frontend/images/icons-dow-box.png')}}" alt=""></span>
								</div>

								<button type="button" class="btn btn-dat-phong" data-toggle="modal" data-target="#myModal">Đặt phòng</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="content-hp row">
				<div class="slider-hp form-horizontal col-md-5 col-sm-12 col-xs-12">
					<div class="item">
						<ul class="content-slider-hp">
							<li>
								<img src="{{asset('frontend/images/img-hp.png')}}">
							</li>
							<li>
								<img src="{{asset('frontend/images/img-hp.png')}}">
							</li>
							<li>
								<img src="{{asset('frontend/images/img-hp.png')}}">
							</li>
						</ul>
					</div>
					<div class="btn btn-chi-tiet">
						<a href="#" title="Chi tiết">Chi tiết</a>
					</div>
				</div>
				<div class="details-hp col-md-7 col-sm-12 col-xs-12">
					<div class="chi-tiet-hp">
						<div class="header-detail row">
							<h3 class="title-detail">Deluxe Golf View</h3>
							<a class="thong-tin-hp" href="#" title="Thông tin phòng">Thông tin phòng</a>
						</div>
						<div class="content-detail">
							<ul class="tthp-detail">
								<li>
									<a href="#" title="Hướng biển">Hướng biển</a>
								</li>
								<li>
									<a href="#" title="Diện tích">36m²</a>
								</li>
								<li>
									<a href="#" title="Số lượng">Tối đa 3 người lớn + 1 trẻ em</a>
								</li>
								<li>
									<a href="#" title="Số giường">1 giường đôi + 1 giường đơn</a>
								</li>
							</ul>
							<div class="sale-hp">
								<ul class="chi-tiet-sale">
									<li>
										<i class="fa fa-circle" aria-hidden="true"></i>
										<span class="title-sale">Khuyến mãi thấp điểm</span>
										<span class="gia-sale">1.900.000Đ</span>
									</li>
									<li>
										<i class="fa fa-circle" aria-hidden="true"></i>
										<span class="title-sale">Đặt phòng sớm</span>
										<span class="why-sale">?</span>
										<span class="time-sale">Thời gian ở: <strong>12/12/2018 - 31/12/2019</strong></span>
										<span class="gia-sale">1.900.000Đ</span>
									</li>
								</ul>
							</div>
						</div>
						<div class="dat-phong">
							<div class="form-grounp">
								<div class="sal">
									<select name="Số phòng">
										<option value="">Số phòng</option>
										<option value="">2</option>
										<option value="">3</option>
										<option value="">4</option>
										<option value="">5</option>
									</select>
									<span class="icons-dow"><img src="{{asset('frontend/images/icons-dow-box.png')}}" alt=""></span>
								</div>

								<button type="button" class="btn btn-dat-phong" data-toggle="modal" data-target="#myModal">Đặt phòng</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="content-hp row">
				<div class="slider-hp form-horizontal col-md-5 col-sm-12 col-xs-12">
					<div class="item">
						<ul class="content-slider-hp">
							<li>
								<img src="{{asset('frontend/images/img-hp.png')}}">
							</li>
							<li>
								<img src="{{asset('frontend/images/img-hp.png')}}">
							</li>
							<li>
								<img src="{{asset('frontend/images/img-hp.png')}}">
							</li>
						</ul>
					</div>
					<div class="btn btn-chi-tiet">
						<a href="#" title="Chi tiết">Chi tiết</a>
					</div>
				</div>
				<div class="details-hp col-md-7 col-sm-12 col-xs-12">
					<div class="chi-tiet-hp">
						<div class="header-detail row">
							<h3 class="title-detail">Deluxe Golf View</h3>
							<a class="thong-tin-hp" href="#" title="Thông tin phòng">Thông tin phòng</a>
						</div>
						<div class="content-detail">
							<ul class="tthp-detail">
								<li>
									<a href="#" title="Hướng biển">Hướng biển</a>
								</li>
								<li>
									<a href="#" title="Diện tích">36m²</a>
								</li>
								<li>
									<a href="#" title="Số lượng">Tối đa 3 người lớn + 1 trẻ em</a>
								</li>
								<li>
									<a href="#" title="Số giường">1 giường đôi + 1 giường đơn</a>
								</li>
							</ul>
							<div class="sale-hp">
								<ul class="chi-tiet-sale">
									<li>
										<i class="fa fa-circle" aria-hidden="true"></i>
										<span class="title-sale">Khuyến mãi thấp điểm</span>
										<span class="gia-sale">1.900.000Đ</span>
									</li>
									<li>
										<i class="fa fa-circle" aria-hidden="true"></i>
										<span class="title-sale">Đặt phòng sớm</span>
										<span class="why-sale">?</span>
										<span class="time-sale">Thời gian ở: <strong>12/12/2018 - 31/12/2019</strong></span>
										<span class="gia-sale">1.900.000Đ</span>
									</li>
									<li>
										<i class="fa fa-circle" aria-hidden="true"></i>
										<span class="title-sale">Khuyến mãi thấp điểm</span>
										<span class="why-sale">?</span>
										<span class="gia-sale">1.900.000Đ</span>
									</li>
								</ul>
							</div>
						</div>
						<div class="dat-phong">
							<div class="form-grounp">
								<div class="sal">
									<select name="Số phòng">
										<option value="">Số phòng</option>
										<option value="">2</option>
										<option value="">3</option>
										<option value="">4</option>
										<option value="">5</option>
									</select>
									<span class="icons-dow"><img src="{{asset('frontend/images/icons-dow-box.png')}}" alt=""></span>
								</div>

								<button type="button" class="btn btn-dat-phong" data-toggle="modal" data-target="#myModal">Đặt phòng</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="thong-tin-ct">
			<div class="title-hotel">
				<h2>Thông tin chi tiết <span>HOTEL DE LA COUPOLE SAPA</span></h2>
			</div>
			<div class="nd-thong-tin row">
				<div class="ndtt-left col-md-6">
					<p>FLC Grand Hotel Sầm Sơn là khách sạn 5 sao tại thành phố Sầm Sơn. Khách sạn gồm có 586 phòng khách sạn và phòng hạng sang cao cấp với trang thiết bị tối tân cùng các tiện nghi bậc nhất. Tất cả các phòng đều được thiết kế tinh tế với những điểm nhấn hiện đại cùng tầm nhìn trọn vẹn ra bãi biển Sầm Sơn thơ mộng hoặc cả quần thể FLC Sầm Sơn. Không chỉ có thiết kế ấn tượng, nơi đây còn sở hữu hàng loạt tiện ích nội khu “đáng nể” như bể bơi vô cực Above All Poor Bar, bể bơi nước nóng, Cigar Bar, Roof Top Bar… Với những địa điểm giải trí nổi bật và mới lạ, nơi đây được đánh giá là khách sạn 5 sao sang trọng, đẳng cấp đạt chuẩn quốc tế.</p>
				</div>
				<div class="ndtt-right col-md-6">
					<p>Tất cả các phòng tại đây đều được trang bị Tivi màn hình phẳng, ấm đun nước, bồn tắm, nhà vệ sinh riêng với đây đủ đồ dùng cá nhân miễn phí. Bạn có thể lựa chọn ăn uống tại các nhà hàng trong khuôn viên FLC. Với sự đa dạng, phong phú về ẩm thực, đều được chế biến từ các đầu bếp nhiều kình nghiệm, có tay nghề cao. Chắc chắn bạn và những người thân yêu sẽ có những trải nghiệm vô cùng thú vị khi đến đây nghỉ dưỡng.</p>
				</div>
			</div>
		</div>
		<div class="ds-khach-san">
			<div class="title-hotel">
				<h2>Có thể bạn sẽ thích</h2>
			</div>
			<div class="item">
				<div class="content-slider-ks">
					<div class="item-ks">
						<div class="img-ks">
							<a href="#" title="">
								<img src="{{asset('frontend/images/img-khach-san.jpg')}}" alt="">
							</a>
							<span class="ks-sale">Giảm 30%</span>
						</div>
						<div class="nd-text-ks">
							<h4 class="title-dsks">Best Western Premier 
							Sonasea Phú Quốc</h4>
							<div class="star-ks">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
							</div>
							<div class="address">
								<i class="fa fa-map-marker" aria-hidden="true"></i>
								<span>Hùng Thắng, Thành phố Hạ Long, Quảng Ninh</span>
							</div>
							<div class="discount">
								<span class="gia-ks">1.920.000đ</span>
								<span class="gia-sale">3.980.000đ</span>
							</div>
							<button type="button" class="btn btn-dsks">Chi tiết</button>
						</div>
					</div>
					<div class="item-ks">
						<div class="img-ks">
							<a href="#" title="">
								<img src="{{asset('frontend/images/img-khach-san.jpg')}}" alt="">
							</a>
							<span class="ks-sale">Giảm 30%</span>
						</div>
						<div class="nd-text-ks">
							<h4 class="title-dsks">Best Western Premier 
							Sonasea Phú Quốc</h4>
							<div class="star-ks">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
							</div>
							<div class="address">
								<i class="fa fa-map-marker" aria-hidden="true"></i>
								<span>Hùng Thắng, Thành phố Hạ Long, Quảng Ninh</span>
							</div>
							<div class="discount">
								<span class="gia-ks">1.920.000đ</span>
								<span class="gia-sale">3.980.000đ</span>
							</div>
							<button type="button" class="btn btn-dsks">Chi tiết</button>
						</div>
					</div>
					<div class="item-ks">
						<div class="img-ks">
							<a href="#" title="">
								<img src="{{asset('frontend/images/img-khach-san.jpg')}}" alt="">
							</a>
							<span class="ks-sale">Giảm 30%</span>
						</div>
						<div class="nd-text-ks">
							<h4 class="title-dsks">Best Western Premier 
							Sonasea Phú Quốc</h4>
							<div class="star-ks">
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
								<i class="fa fa-star" aria-hidden="true"></i>
							</div>
							<div class="address">
								<i class="fa fa-map-marker" aria-hidden="true"></i>
								<span>Hùng Thắng, Thành phố Hạ Long, Quảng Ninh</span>
							</div>
							<div class="discount">
								<span class="gia-ks">1.920.000đ</span>
								<span class="gia-sale">3.980.000đ</span>
							</div>
							<button type="button" class="btn btn-dsks">Chi tiết</button>
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