<div class="main-navigation-mobile">
	<div class="menu-close">
		<span>Menu</span>
		<span class="icon-close"><img src="{{asset('frontend/images/x.png')}}" alt=""></span>
	</div>
	<div class="main-navigation-inner">
		<div class="menu-container">
			<ul id="primary-menu" class="menu">
				<li class="menu-item {{isset($flag) && $flag == 'list-ks' ? 'current-menu-item' : ''}} menu-item-has-children max-mega-menu"><a href="{{route('KS.list')}}">Khách sạn</a>

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
</div> 