<header id="header" class="header">
	<div class="header-top">
		<div class="container">
			<div class="top-bar">
				<div class="top-center">
					<a href="tel:088.828.0817" class="phone">
						<i class="fa fa-whatsapp" aria-hidden="true"></i>
						<span>088.828.0817</span>
					</a>
				</div>
				<div class="top-right">
					<ul class="nav top-bar-nav">
						<li>
							<a href="#" class="nav-top-link">
								Khách đoàn
							</a>
						</li>
						<li>
							<a href="#" class="nav-top-link">
								Đặt phòng nhanh
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div> <!-- end topbar -->
	<!-- Header-main -->
	<div class="header-main clearfix">
		<div class="container">
			<div class="logo-main-menu clearfix">
				<div class="menu-icon">
					<div class="menu-open">
						<div class="icon-click">
							<span class="icons"></span>
							<span class="icons"></span>
							<span class="icons"></span>
						</div>
					</div>
				</div>
				<div class="logo-header">
					<a href="{{route('home')}}" >
						<h1 class="text-logo">
							<img src="{{asset('frontend/images/logo.png')}}" alt="">
						</h1>
					</a>
				</div>
				<nav class="main-navigation">
					<div class="main-navigation-inner">
						<div class="menu-container">
							<ul id="primary-menu" class="menu">
								<li class="menu-item {{isset($flag) && $flag == 'list-ks' ? 'current-menu-item' : ''}}  menu-item-has-children max-mega-menu"><a href="{{route('KS.list')}}">Khách sạn</a>
									<ul class="sub-menu sub-mega-menu">
										<li class="menu-item"><a href="">Miền bắc</a>
											<ul class="sub-menu sub-mega-menu-children">
												<li class="menu-item"><a href="">Khách sạn Hạ Long</a></li>
												<li class="menu-item"><a href="">Khách sạn Sapa</a></li>
												<li class="menu-item"><a href="">Khách sạn Ninh Bình</a></li>
												<li class="menu-item"><a href="">Khách sạn Vĩnh Phúc</a></li>
												<li class="menu-item"><a href="">Khách sạn Hòa Bình</a></li>
											</ul>
										</li>
										<li class="menu-item"><a href="">Miền trung</a>
											<ul class="sub-menu sub-mega-menu-children">
												<li class="menu-item"><a href="">Khách sạn Thanh Hóa</a></li>
												<li class="menu-item"><a href="">Khách sạn Nghệ An</a></li>
												<li class="menu-item"><a href="">Khách sạn Huế</a></li>
												<li class="menu-item"><a href="">Khách sạn Quy Nhơn</a></li>
												<li class="menu-item"><a href="">Khách sạn Đà Nẵng</a></li>
												<li class="menu-item"><a href="">Khách sạn Nha Trang</a></li>
												<li class="menu-item"><a href="">Khách sạn Mũi Né</a></li>
												<li class="menu-item"><a href="">Khách sạn Hội An</a></li>
											</ul>

										</li>
										<li class="menu-item"><a href="">Miền nam</a>
											<ul class="sub-menu sub-mega-menu-children">
												<li class="menu-item"><a href="">Khách sạn Phú Quốc</a></li>
												<li class="menu-item"><a href="">Khách sạn Vũng Tàu</a></li>
												<li class="menu-item"><a href="">Khách sạn Sài Gòn</a></li>
												<li class="menu-item"><a href="">Khách sạn Côn Đảo</a></li>
												<li class="menu-item"><a href="">Khách sạn Cần Thơ</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li class="menu-item menu-item-has-children max-mega-menu"><a href="">Flc</a>
									<ul class="sub-menu sub-mega-menu">
										<li class="menu-item"><a href="">Miền bắc</a>
											<ul class="sub-menu sub-mega-menu-children">
												<li class="menu-item"><a href="">Khách sạn Hạ Long</a></li>
												<li class="menu-item"><a href="">Khách sạn Sapa</a></li>
												<li class="menu-item"><a href="">Khách sạn Ninh Bình</a></li>
												<li class="menu-item"><a href="">Khách sạn Vĩnh Phúc</a></li>
												<li class="menu-item"><a href="">Khách sạn Hòa Bình</a></li>
											</ul>
										</li>
										<li class="menu-item"><a href="">Miền trung</a>
											<ul class="sub-menu sub-mega-menu-children">
												<li class="menu-item"><a href="">Khách sạn Thanh Hóa</a></li>
												<li class="menu-item"><a href="">Khách sạn Nghệ An</a></li>
												<li class="menu-item"><a href="">Khách sạn Huế</a></li>
												<li class="menu-item"><a href="">Khách sạn Quy Nhơn</a></li>
												<li class="menu-item"><a href="">Khách sạn Đà Nẵng</a></li>
												<li class="menu-item"><a href="">Khách sạn Nha Trang</a></li>
												<li class="menu-item"><a href="">Khách sạn Mũi Né</a></li>
												<li class="menu-item"><a href="">Khách sạn Hội An</a></li>
											</ul>

										</li>
										<li class="menu-item"><a href="">Miền nam</a>
											<ul class="sub-menu sub-mega-menu-children">
												<li class="menu-item"><a href="">Khách sạn Phú Quốc</a></li>
												<li class="menu-item"><a href="">Khách sạn Vũng Tàu</a></li>
												<li class="menu-item"><a href="">Khách sạn Sài Gòn</a></li>
												<li class="menu-item"><a href="">Khách sạn Côn Đảo</a></li>
												<li class="menu-item"><a href="">Khách sạn Cần Thơ</a></li>
											</ul>
										</li>
									</ul>

								</li>
								<li class="menu-item {{isset($flag) && $flag == 'voucher' ? 'current-menu-item' : ''}} menu-item-has-children max-mega-menu"><a href="{{route('Voucher.list')}}">Voucher - Combo</a>
									<ul class="sub-menu sub-mega-menu">
										<li class="menu-item"><a href="">Miền bắc</a>
											<ul class="sub-menu sub-mega-menu-children">
												<li class="menu-item"><a href="">Khách sạn Hạ Long</a></li>
												<li class="menu-item"><a href="">Khách sạn Sapa</a></li>
												<li class="menu-item"><a href="">Khách sạn Ninh Bình</a></li>
												<li class="menu-item"><a href="">Khách sạn Vĩnh Phúc</a></li>
												<li class="menu-item"><a href="">Khách sạn Hòa Bình</a></li>
											</ul>
										</li>
										<li class="menu-item"><a href="">Miền trung</a>
											<ul class="sub-menu sub-mega-menu-children">
												<li class="menu-item"><a href="">Khách sạn Thanh Hóa</a></li>
												<li class="menu-item"><a href="">Khách sạn Nghệ An</a></li>
												<li class="menu-item"><a href="">Khách sạn Huế</a></li>
												<li class="menu-item"><a href="">Khách sạn Quy Nhơn</a></li>
												<li class="menu-item"><a href="">Khách sạn Đà Nẵng</a></li>
												<li class="menu-item"><a href="">Khách sạn Nha Trang</a></li>
												<li class="menu-item"><a href="">Khách sạn Mũi Né</a></li>
												<li class="menu-item"><a href="">Khách sạn Hội An</a></li>
											</ul>

										</li>
										<li class="menu-item"><a href="">Miền nam</a>
											<ul class="sub-menu sub-mega-menu-children">
												<li class="menu-item"><a href="">Khách sạn Phú Quốc</a></li>
												<li class="menu-item"><a href="">Khách sạn Vũng Tàu</a></li>
												<li class="menu-item"><a href="">Khách sạn Sài Gòn</a></li>
												<li class="menu-item"><a href="">Khách sạn Côn Đảo</a></li>
												<li class="menu-item"><a href="">Khách sạn Cần Thơ</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li class="menu-item"><a href="">Blog</a></li>
								<li class="menu-item" {{isset($flag) && $flag == 'contact' ? 'current-menu-item' : ''}}><a href="{{route('contact.get')}}">Liên hệ</a></li>
							</ul>
						</div>
					</div>
				</nav>
				<div class="phone-header">
					<a href="tel:088.828.0817" class="phone">
						<i class="fa fa-whatsapp" aria-hidden="true"></i>
						<span>088.828.0817</span>
					</a>
				</div>
			</div>
		</div>
	</div>
</header>