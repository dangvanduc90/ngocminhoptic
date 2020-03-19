@extends('web.layouts.main')

@section('title')
Trang chủ
@parent
@stop

@section('css')
@stop

@section('content')
<div class="banner-form-slider">
	<div class="slider-header">
		<ul class="home-slides">
			<li class="item"><img src="{{asset('frontend/images/banner-slider.png')}}" alt=""></li>
			<li class="item"><img src="{{asset('frontend/images/banner-slider.png')}}" alt=""></li>
		</ul>
	</div>
	<div class="form-submit-header">
		<div class="container-st">
			<div class="row-st">
				<h2 class="text-form-header">
					<span>ĐẶT PHÒNG</span>
					Khách sạn, resort, căn hộ
				</h2>
				<form action="" class="form-desktop">
					<div class="text-form clearfix">
						<div class="form-group">
							<input type="text" class="form-control click-text" id="" placeholder="Nhập điểm đến" name="">
							<div class="search-post">
								<h3 class="text-search-post">Điểm đến nổi bật 2020</h3>
								<div class="post-box row">
									<div class="box-masory col-md-4 col-sm-6">
										<a href="#" title="Đà Lạt" class="box-masory-fg">
											<div class="post-thumbnail">
												<img src="{{asset('frontend/images/images-post.png')}}" alt="">
											</div>
											<div class="entry">
												<h3 class="post-box-title">Đà Lạt</h3>
												<p class="phong"><span>47</span> khách sạn</p>
											</div>
										</a>
									</div>
									<div class="box-masory col-md-4 col-sm-6">
										<a href="#" title="Đà Lạt" class="box-masory-fg">
											<div class="post-thumbnail">
												<img src="{{asset('frontend/images/images-post.png')}}" alt="">
											</div>
											<div class="entry">
												<h3 class="post-box-title">Đà Lạt</h3>
												<p class="phong"><span>47</span> khách sạn</p>
											</div>
										</a>
									</div>
									<div class="box-masory col-md-4 col-sm-6">
										<a href="#" title="Đà Lạt" class="box-masory-fg">
											<div class="post-thumbnail">
												<img src="{{asset('frontend/images/images-post.png')}}" alt="">
											</div>
											<div class="entry">
												<h3 class="post-box-title">Đà Lạt</h3>
												<p class="phong"><span>47</span> khách sạn</p>
											</div>
										</a>
									</div>
									<div class="box-masory col-md-4 col-sm-6">
										<a href="#" title="Đà Lạt" class="box-masory-fg">
											<div class="post-thumbnail">
												<img src="{{asset('frontend/images/images-post.png')}}" alt="">
											</div>
											<div class="entry">
												<h3 class="post-box-title">Đà Lạt</h3>
												<p class="phong"><span>47</span> khách sạn</p>
											</div>
										</a>
									</div>
									<div class="box-masory col-md-4 col-sm-6">
										<a href="#" title="Đà Lạt" class="box-masory-fg">
											<div class="post-thumbnail">
												<img src="{{asset('frontend/images/images-post.png')}}" alt="">
											</div>
											<div class="entry">
												<h3 class="post-box-title">Đà Lạt</h3>
												<p class="phong"><span>47</span> khách sạn</p>
											</div>
										</a>
									</div>
									<div class="box-masory col-md-4 col-sm-6">
										<a href="#" title="Đà Lạt" class="box-masory-fg">
											<div class="post-thumbnail">
												<img src="{{asset('frontend/images/images-post.png')}}" alt="">
											</div>
											<div class="entry">
												<h3 class="post-box-title">Đà Lạt</h3>
												<p class="phong"><span>47</span> khách sạn</p>
											</div>
										</a>
									</div>
									<div class="box-masory col-md-4 col-sm-6">
										<a href="#" title="Đà Lạt" class="box-masory-fg">
											<div class="post-thumbnail">
												<img src="{{asset('frontend/images/images-post.png')}}" alt="">
											</div>
											<div class="entry">
												<h3 class="post-box-title">Đà Lạt</h3>
												<p class="phong"><span>47</span> khách sạn</p>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group date-form">
							<span class="icon-date"></span>
							<input type="text" class="form-control" id="" placeholder="Ngày nhận phòng" name="">
						</div>
						<div class="form-group date-form">
							<span class="icon-date"></span>
							<input type="text" class="form-control" id="" placeholder="Ngày trả phòng" name="">
						</div>
					</div>

					<div class="submit-form">
						<button type="submit" class="btn btn-default">Tìm kiếm</button>
						<input type="hidden" name="" value="" />
					</div>
					
				</form> <!-- end form desktop -->
				<form action="" class="form-mobile">
					<div class="form-group">
						<input type="text" class="form-control click-text" id="" placeholder="Nhập điểm đến" name="">
					</div>
					<div class="submit-form">
						<button type="submit" class="btn btn-default">Tìm kiếm</button>
						<input type="hidden" name="" value="" />
					</div>
					
				</form> <!-- end form desktop -->

			</div>
		</div>
	</div>
</div>

<!-- Content -->
<div id="content">
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="endow">
				<div class="container">
					<div class="box-icons">
						<div class="thum">
							<img src="{{asset('frontend/images/icons-s.png')}}" alt="">
						</div>
						<div class="entry">
							Sản phẩm du lịch<br/>phong phú
						</div>
					</div>
					<div class="box-icons">
						<div class="thum">
							<img src="{{asset('frontend/images/icons-s.png')}}" alt="">
						</div>
						<div class="entry">
							Dịch vụ khách hàng<br/>chu đáo
						</div>
					</div>
					<div class="box-icons">
						<div class="thum">
							<img src="{{asset('frontend/images/icons-s.png')}}" alt="">
						</div>
						<div class="entry">
							Đảm bảo giá<br/>tốt nhất
						</div>
					</div>
					<div class="box-icons">
						<div class="thum">
							<img src="{{asset('frontend/images/icons-s.png')}}" alt="">
						</div>
						<div class="entry">
							Deal tốt mỗi ngày
						</div>
					</div>
					<div class="box-icons">
						<div class="thum">
							<img src="{{asset('frontend/images/icons-s.png')}}" alt="">
						</div>
						<div class="entry">
							Xuất hóa đơn<br/>GTGT
						</div>
					</div>
				</div>
			</div> <!-- end  -->
			<div class="title-fieldset">
				<div class="container-st">
					<fieldset>
						<legend><span>Cùng bạn</span>TRÊN NHỮNG CHUYẾN ĐI</legend>
						<div class="thse">
							<p>Cùng ODG Travel, bạn không còn bỏ lỡ bất cứ điều tuyệt vời nào trong chuyến du lịch của mình. Chúng tôi lựa chọn cho bạn khách sạn phù hợp, tour đặc sắc, thông tin du lịch chi tiết kèm mức giá hấp dẫn. </p>
							<p>Dù bất cứ nơi đâu, hãy để Vinastay.com giúp chuyến đi của bạn trở nên hoàn hảo nhất.</p>
						</div>
					</fieldset>
				</div>
			</div> <!-- end  -->
			<div class="destination">
				<div class="container">
					<div class="row-dd">
						<h2 class="title-destination">ĐỊA ĐIỂM NGHỈ DƯỠNG NỔI BẬT</h2>
						<div class="list-post-tab">
							<ul class="nav nav-tabs">
								<li class="active"><a data-toggle="tab" href="#cat-count1">ĐÀ NẴNG & HỘI AN </a></li>
								<li><a data-toggle="tab" href="#cat-count2">SAPA</a></li>
								<li><a data-toggle="tab" href="#cat-count3">THANH HÓA</a></li>
								<li><a data-toggle="tab" href="#cat-count4">NHA TRANG</a></li>
							</ul>
							<div class="tab-content">
								<div id="cat-count1" class="tab-pane fade in active">
									<div class="col-md-4 col-xs-6 list-post">
										<div class="post-contenr">
											<div class="thumbnail-post">
												<a href="" title="">
													<img src="{{asset('frontend/images/images-post-2.png')}}" alt="">
												</a>
											</div>
											<div class="media-list">
												<h3 class="post-box-title">
													<a href="" title="">Vinpearl Resort & Spa Đà Nẵng</a>
												</h3>
												<div class="rating">
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-xs-6 list-post">
										<div class="post-contenr">
											<div class="thumbnail-post">
												<a href="" title="">
													<img src="{{asset('frontend/images/images-post-2.png')}}" alt="">
												</a>
											</div>
											<div class="media-list">
												<h3 class="post-box-title">
													<a href="" title="">Vinpearl Resort & Spa Đà Nẵng</a>
												</h3>
												<div class="rating">
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-xs-6 list-post">
										<div class="post-contenr">
											<div class="thumbnail-post">
												<a href="" title="">
													<img src="{{asset('frontend/images/images-post-2.png')}}" alt="">
												</a>
											</div>
											<div class="media-list">
												<h3 class="post-box-title">
													<a href="" title="">Vinpearl Resort & Spa Đà Nẵng</a>
												</h3>
												<div class="rating">
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-xs-6 list-post">
										<div class="post-contenr">
											<div class="thumbnail-post">
												<a href="" title="">
													<img src="{{asset('frontend/images/images-post-2.png')}}" alt="">
												</a>
											</div>
											<div class="media-list">
												<h3 class="post-box-title">
													<a href="" title="">Vinpearl Resort & Spa Đà Nẵng</a>
												</h3>
												<div class="rating">
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-xs-6 list-post">
										<div class="post-contenr">
											<div class="thumbnail-post">
												<a href="" title="">
													<img src="{{asset('frontend/images/images-post-2.png')}}" alt="">
												</a>
											</div>
											<div class="media-list">
												<h3 class="post-box-title">
													<a href="" title="">Vinpearl Resort & Spa Đà Nẵng</a>
												</h3>
												<div class="rating">
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-xs-6 list-post">
										<div class="post-contenr">
											<div class="thumbnail-post">
												<a href="" title="">
													<img src="{{asset('frontend/images/images-post-2.png')}}" alt="">
												</a>
											</div>
											<div class="media-list">
												<h3 class="post-box-title">
													<a href="" title="">Vinpearl Resort & Spa Đà Nẵng</a>
												</h3>
												<div class="rating">
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div id="cat-count2" class="tab-pane fade">
									<div class="col-md-4 col-xs-6 list-post">
										<div class="post-contenr">
											<div class="thumbnail-post">
												<a href="" title="">
													<img src="{{asset('frontend/images/images-post-2.png')}}" alt="">
												</a>
											</div>
											<div class="media-list">
												<h3 class="post-box-title">
													<a href="" title="">Vinpearl Resort & Spa Đà Nẵng</a>
												</h3>
												<div class="rating">
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div id="cat-count3" class="tab-pane fade">
									<div class="col-md-4 col-xs-6 list-post">
										<div class="post-contenr">
											<div class="thumbnail-post">
												<a href="" title="">
													<img src="{{asset('frontend/images/images-post-2.png')}}" alt="">
												</a>
											</div>
											<div class="media-list">
												<h3 class="post-box-title">
													<a href="" title="">Vinpearl Resort & Spa Đà Nẵng</a>
												</h3>
												<div class="rating">
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div id="cat-count4" class="tab-pane fade">
									<div class="col-md-4 col-xs-6 list-post">
										<div class="post-contenr">
											<div class="thumbnail-post">
												<a href="" title="">
													<img src="{{asset('frontend/images/images-post-2.png')}}" alt="">
												</a>
											</div>
											<div class="media-list">
												<h3 class="post-box-title">
													<a href="" title="">Vinpearl Resort & Spa Đà Nẵng</a>
												</h3>
												<div class="rating">
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div><!-- end  -->
			<div class="sign-up-for">
				<div class="container">
					<div class="page-de">
						<h3 class="title-favorably">ƯU ĐÃI ĐẶC BIỆT</h3>
						<p class="text-fd">Melia Ba Vì Mountain Retreat</br>Tiết kiệm lên đến 30%</p>
						<a href="" class="link-mo">Chi tiết</a>
					</div>
				</div>
			</div><!-- end  -->
			<div class="voucher">
				<div class="container">
					<h2 class="title-voucher">Voucher & Combo nổi bật</h2>
					<!-- đếm mà hình 991 thì ẩn đi -->
					<div class="course-cate course-desktop">
						<div class="post-listing">
							<div class="thumb-post">
								<img src="{{asset('frontend/images/images-post.png')}}" alt="">
							</div>
							<div class="post-box">
								<a href="" class="taxonomy">HẠ LONG</a>
								<h3 class="title"><a href="" title="">FLC Grand Hotel Hạ Long</a></h3>
								<p class="describe">Tọa lạc trên ngọn đồi riêng tư với tầm nhìn tuyệt đẹp ra Vịnh Hạ Long – một trong bảy kì quan thiên nhiên thế giới, FLC Grand Hotel Hạ Long sẽ là một trong những lựa chọn hoàn hảo cho kì nghỉ của bạn.</p>
								<a href="" class="text-post-link">Chi tiết</a>
							</div>
						</div>
						<div class="post-listing">
							<div class="thumb-post">
								<img src="{{asset('frontend/images/images-post.png')}}" alt="">
							</div>
							<div class="post-box">
								<a href="" class="taxonomy">HẠ LONG</a>
								<h3 class="title"><a href="" title="">FLC Grand Hotel Hạ Long</a></h3>
								<p class="describe">Tọa lạc trên ngọn đồi riêng tư với tầm nhìn tuyệt đẹp ra Vịnh Hạ Long – một trong bảy kì quan thiên nhiên thế giới, FLC Grand Hotel Hạ Long sẽ là một trong những lựa chọn hoàn hảo cho kì nghỉ của bạn.</p>
								<a href="" class="text-post-link">Chi tiết</a>
							</div>
						</div>
					</div>  <!-- end -->

					<!-- đếm mà hình 991 thì hiện lên -->
					<div class="course-cate course-mobile">
						<div class="post-listing">
							<div class="thumb-post">
								<img src="{{asset('frontend/images/images-post.png')}}" alt="">
							</div>
							<div class="post-box">
								<a href="" class="taxonomy">HẠ LONG</a>
								<h3 class="title"><a href="" title="">FLC Grand Hotel Hạ Long</a></h3>
								<a href="" class="text-post-link">Chi tiết</a>
							</div>
						</div>
						<div class="post-listing">
							<div class="thumb-post">
								<img src="{{asset('frontend/images/images-post.png')}}" alt="">
							</div>
							<div class="post-box">
								<a href="" class="taxonomy">HẠ LONG</a>
								<h3 class="title"><a href="" title="">FLC Grand Hotel Hạ Long</a></h3>
								<a href="" class="text-post-link">Chi tiết</a>
							</div>
						</div>
					</div> <!-- end -->
				</div>
			</div>
		</main>
	</div>
</div>
@stop


@section('js')
@stop