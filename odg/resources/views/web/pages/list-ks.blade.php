@extends('web.layouts.main')

@section('title')
Khách sạn
@parent
@stop

@section('css')
@stop

@section('content')
<div id="content">
	<div class="baner-archive">
		<img src="{{asset('frontend/images/banner-list-khach-san.png')}}" alt="">
		<div class="entry-title">
			<div class="container">
				<h1 class="page-title">Khách sạn Hạ Long</h1>
			</div>
		</div>
	</div> <!-- end -->
	<div class="result-count clearfix">
		<div class="container">
			<div class="search-sort clearfix">
				<div class="sort clearfix">
					<p>Sắp xếp theo</p>
					<form action="" class="form-sap-xep">
						<div class="sap-xep">
							<div class="form-group">
								<select name="" id="">
									<option value="Giá tăng dần">Giá tăng dần</option>
									<option value="Giá giảm dần">Giá giảm dần</option>
								</select>
								<span class="icons-dow"><img src="{{asset('frontend/images/icons-dow-box.png')}}" alt=""></span>
							</div>
						</div>
						<div class="sap-xep">
							<div class="form-group">
								<ul class="list-unstyled">
									<li class="init" data-value="5 sao">
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
									</li>
									<li data-value="4 sao">
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
									</li>
									<li data-value="3 sao">
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
									</li>
									<li data-value="2 sao">
										<i class="fa fa-star" aria-hidden="true"></i>
										<i class="fa fa-star" aria-hidden="true"></i>
									</li>
									<li data-value="1 sao">
										<i class="fa fa-star" aria-hidden="true"></i>
									</li>
								</ul>
								<span class="icons-dow"><img src="{{asset('frontend/images/icons-dow-box.png')}}" alt=""></span>
							</div>

						</div>
					</form>
				</div>
				<div class="tim-kiem-click  click-khach-san">
					<a href="javascript:void(0)" class="click-search">Tìm kiếm nâng cao<span class="icons-dow"><img src="{{asset('frontend/images/icons-dow-box.png')}}" alt=""></span></a>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="tim-kiem-nca clearfix tim-kiem-khach-san">
			<form action="">
				<div class="col-e">
					<h3 class="title-search">Theo tên</h3>
					<div class="form-group">
						<input type="radio" class="form-check-input" name="theoten" checked>
						<label for="">Tên A - Z </label>
					</div>
					<div class="form-group">
						<input type="radio" class="form-check-input" name="theoten">
						<label for="">Tên Z - A </label>
					</div>
				</div>
				<div class="col-e  col-dh">
					<h3 class="title-search">Giá phòng</h3>
					<div class="form-group">
						<input type="radio" class="form-check-input" name="gia-phong" checked>
						<label for="">Tất cả</label>
					</div>
					<div class="form-group">
						<input type="radio" class="form-check-input" name="gia-phong">
						<label for="">Dưới 1.000.000</label>
					</div>
					<div class="form-group">
						<input type="radio" class="form-check-input" name="gia-phong">
						<label for="">1.050.000 đến 2.000.000</label>
					</div>
					<div class="form-group">
						<input type="radio" class="form-check-input" name="gia-phong">
						<label for="">2.050.000 đến 3.000.000</label>
					</div>
					<div class="form-group">
						<input type="radio" class="form-check-input" name="gia-phong">
						<label for="">3.050.000 đến 4.000.000</label>
					</div>
					<div class="form-group">
						<input type="radio" class="form-check-input" name="gia-phong">
						<label for="">Trên 4.000.000</label>
					</div>
				</div>
				<div class="col-e danh-gia">
					<h3 class="title-search">Hạng sao</h3>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
						</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>

						</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>

						</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>

						</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">
							<i class="fa fa-star" aria-hidden="true"></i>

						</label>
					</div>
				</div>
				<div class="col-e">
					<h3 class="title-search">Loại chỗ ở</h3>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">
							Du thuyền
						</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">
							Căn hộ
						</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">
							Homestay
						</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">
							Biệt thự
						</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">
							Resort
						</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">
							Khách sạn
						</label>
					</div>
				</div>
				<div class="col-e">
					<h3 class="title-search">Chuỗi</h3>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">Vinpearl</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">FLC</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">InterContinental</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">Novotel</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">H&K</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">Mường Thanh</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">Accor Hotels</label>
					</div>
					<div class="form-group">
						<input type="checkbox" class="form-check-input" value="">
						<label for="">TTC</label>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="bai-viet-khach-san">
		<div class="container">
			<div class="list-hotel clearfix ">
				<div class="contenr-hotel clearfix">
					<div class="thumbnail-hotel">
						<a href=""><img src="{{asset('frontend/images/img-hotel.png')}}" alt=""></a>
						<span class="onsale">
							<span class="cos">
								<span class="hovera"></span>
								<span class="tooltiptexts">
									Được đề xuất bởi VianStay, là một trong
									những resort đáng giá nhất Việt Nam
									2020 với giá ưu đãi đặc biệt!
								</span>
							</span>
							<span class="counter-sale">Giảm 50%</span>
						</span>
						<p class="grup-images"><img src="{{asset('frontend/images/grup-img.png')}}" alt=""></p>
					</div>
					<div class="text-box">
						<h3><a href="#">Fusion Maia Đà Nẵng</a></h3>
						<p class="danh-gia">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
						</p>
						<p class="map"><img src="{{asset('frontend/images/maps.png')}}" alt="">Hùng Thắng, Thành phố Hạ Long, Quảng Ninh</p>

						<!-- đếm mà hình 991 thì ẩn đi -->
						<p class="price price-deptop">
							<ins>
								<span class="price-amount amount">1.990.000đ</span>
							</ins><!--  giá khuyến mại -->
							<del>
								<span class="price-amount amount">3.980.000đ</span>
							</del>  <!-- giá gốc -->
						</p>

						<!-- đếm mà hình 991 thì hiện lên -->
						<p class="prices price-mobi">
							<span>1.980.00đ</span>
						</p>

						<p class="noi-dung">
							Royal Lotus Ha Long Resort & Villas nằm tại thành phố Hạ Long và chỉ cách trung tâm thương mại Marine Plaza 2,2 km, sân bay quốc tế Cát Bi khoảng 32Km. Khu nghỉ dưỡng này bao gồm 375 phòng ngủ các loại, với đầy đủ các tiện ích, đáp ứng mọi nhu cầu của du khách. 
						</p>
						<p class="mox-link">
							<a href="{{route('KS.detail',['slug'=>'khach-san-ha-long'])}}">Xem chi tiết</a>
							<a href="#">Đặt phòng</a>
						</p>
					</div>
				</div> <!-- end -->
				<div class="contenr-hotel clearfix">
					<div class="thumbnail-hotel">
						<a href=""><img src="{{asset('frontend/images/img-hotel.png')}}" alt=""></a>
						<span class="onsale">
							<span class="cos">
								<span class="hovera"></span>
								<span class="tooltiptexts">
									Được đề xuất bởi VianStay, là một trong
									những resort đáng giá nhất Việt Nam
									2020 với giá ưu đãi đặc biệt!
								</span>
							</span>
							<span class="counter-sale">Giảm 50%</span>
						</span>
						<p class="grup-images"><img src="{{asset('frontend/images/grup-img.png')}}" alt=""></p>
					</div>
					<div class="text-box">
						<h3><a href="#">Fusion Maia Đà Nẵng</a></h3>
						<p class="danh-gia">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
						</p>
						<p class="map"><img src="{{asset('frontend/images/maps.png')}}" alt="">Hùng Thắng, Thành phố Hạ Long, Quảng Ninh</p>
						<p class="price price-deptop">
							<ins>
								<span class="price-amount amount">1.990.000đ</span>
							</ins><!--  giá khuyến mại -->
							<del>
								<span class="price-amount amount">3.980.000đ</span>
							</del>  <!-- giá gốc -->
						</p>
						<p class="prices price-mobi">
							<span>1.980.00đ</span>
						</p>
						<p class="noi-dung">
							Royal Lotus Ha Long Resort & Villas nằm tại thành phố Hạ Long và chỉ cách trung tâm thương mại Marine Plaza 2,2 km, sân bay quốc tế Cát Bi khoảng 32Km. Khu nghỉ dưỡng này bao gồm 375 phòng ngủ các loại, với đầy đủ các tiện ích, đáp ứng mọi nhu cầu của du khách. 
						</p>
						<p class="mox-link">
							<a href="{{route('KS.detail',['slug'=>'khach-san-ha-long'])}}">Xem chi tiết</a>
							<a href="#">Đặt phòng</a>
						</p>
					</div>
				</div><!-- end -->
			</div> <!--  end bài viết -->
		</div> 
		<div class="pagenavi">
			<div class="container">
				<ul class="page-numbers">
					<li><span class="page-numbers current">1</span></li>
					<li><a href="" class="page-numbers">2</a></li>
					<li><a href="" class="page-numbers">3</a></li>
					<li><a href="" class="page-numbers">4</a></li>
					<li><a href="" class="page-numbers">5</a></li>
				</ul>
			</div>
		</div>
	</div> <!-- end -->
	<div class="ket-qua-tim-kiem-khach-san">
		<div class="container">
			<div class="list-hotel clearfix ">
				<div class="contenr-hotel clearfix">
					<div class="thumbnail-hotel">
						<a href=""><img src="{{asset('frontend/images/img-hotel.png')}}" alt=""></a>
						<span class="onsale">
							<span class="cos">
								<span class="hovera"></span>
								<span class="tooltiptexts">
									Được đề xuất bởi VianStay, là một trong
									những resort đáng giá nhất Việt Nam
									2020 với giá ưu đãi đặc biệt!
								</span>
							</span>
							<span class="counter-sale">Giảm 50%</span>
						</span>
						<p class="grup-images"><img src="{{asset('frontend/images/grup-img.png')}}" alt=""></p>
					</div>
					<div class="text-box">
						<h3><a href="#">Fusion Maia Đà Nẵng</a></h3>
						<p class="danh-gia">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
						</p>
						<p class="map"><img src="{{asset('frontend/images/maps.png')}}" alt="">Hùng Thắng, Thành phố Hạ Long, Quảng Ninh</p>
						<p class="prices">
							<span>1.980.00đ</span>
						</p>
						<p class="noi-dung">
							Royal Lotus Ha Long Resort & Villas nằm tại thành phố Hạ Long và chỉ cách trung tâm thương mại Marine Plaza 2,2 km, sân bay quốc tế Cát Bi khoảng 32Km. Khu nghỉ dưỡng này bao gồm 375 phòng ngủ các loại, với đầy đủ các tiện ích, đáp ứng mọi nhu cầu của du khách. 
						</p>
						<p class="mox-link">
							<a href="#">Xem chi tiết</a>
							<a href="#">Đặt phòng</a>
						</p>
					</div>
				</div> <!-- end -->
				<div class="contenr-hotel clearfix">
					<div class="thumbnail-hotel">
						<a href=""><img src="{{asset('frontend/images/img-hotel.png')}}" alt=""></a>
						<span class="onsale">
							<span class="cos">
								<span class="hovera"></span>
								<span class="tooltiptexts">
									Được đề xuất bởi VianStay, là một trong
									những resort đáng giá nhất Việt Nam
									2020 với giá ưu đãi đặc biệt!
								</span>
							</span>
							<span class="counter-sale">Giảm 50%</span>
						</span>
						<p class="grup-images"><img src="{{asset('frontend/images/grup-img.png')}}" alt=""></p>
					</div>
					<div class="text-box">
						<h3><a href="#">Fusion Maia Đà Nẵng</a></h3>
						<p class="danh-gia">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
						</p>
						<p class="map"><img src="{{asset('frontend/images/maps.png')}}" alt="">Hùng Thắng, Thành phố Hạ Long, Quảng Ninh</p>
						<p class="prices">
							<span>Giá Sốc</span>
						</p>
						<p class="noi-dung">
							Royal Lotus Ha Long Resort & Villas nằm tại thành phố Hạ Long và chỉ cách trung tâm thương mại Marine Plaza 2,2 km, sân bay quốc tế Cát Bi khoảng 32Km. Khu nghỉ dưỡng này bao gồm 375 phòng ngủ các loại, với đầy đủ các tiện ích, đáp ứng mọi nhu cầu của du khách. 
						</p>
						<p class="mox-link">
							<a href="#">Xem chi tiết</a>
							<a href="#">Đặt phòng</a>
						</p>
					</div>
				</div> <!-- end -->
			</div> <!--  end kết quả tìm kiếm -->
		</div>
		<div class="pagenavi">
			<div class="container">
				<ul class="page-numbers">
					<li><span class="page-numbers current">1</span></li>
					<li><a href="" class="page-numbers">2</a></li>
					<li><a href="" class="page-numbers">3</a></li>
					<li><a href="" class="page-numbers">4</a></li>
					<li><a href="" class="page-numbers">5</a></li>
				</ul>
			</div>
		</div>
	</div>   <!-- end -->
</div>
@stop


@section('js')
@stop