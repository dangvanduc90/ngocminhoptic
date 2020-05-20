<header class="hs-site-header menu-sticky">
	<div class="header-more-info">
    		<div class="container">
    			<div class="row">
    				<div class="logo-menu-cart">
    					<div class="site-branding">
    						<h1 class="entry-title ">
    							<a href="{{route('trangchu')}}">
    								<img src="{{$logo ? asset($logo->image) : ''}}" alt="Trang chủ">
    							</a>
    						</h1>
    					</div>
                        <div class="search-header desktop-search clearfix">
                            <div class="form-search">
                                <form role="search" method="get" class="search-form" action="{{ route('search') }}" title="Tìm kiếm">
                                    <button  type="button" id="btn_search" class="search-submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    <label class="ip-form" title="Tìm kiếm">
                                        <input type="text" id="text_search" class="search-field" placeholder="Nhập từ khóa" value="" name="q" />
                                    </label>
                                </form>
                            </div>
                        </div><!--  end search -->
    					<div class="use-social-network">
    						{{-- <button class="niplogin">
    							<div class="avatarimage">
    								<span class="icons-avatar"><i class="fa fa-user-circle" aria-hidden="true"></i></span>
    								<span class="text">Đăng nhập</span>
    							</div>
    						</button> --}}

                            <div class="aad-to-cart">
                               <a href="{{route('giohang.get')}}" title="Giỏ hàng">
                                  <span class="cart_qty">{{ Cart::getTotalQuantity()}}</span>
                              </a>
                          </div>
                          <div class="langcode">
                            <a href="{!! route('user.change-language', ['vi']) !!}" title="Vietnamese">
                                <img src="/images/vietnam-img.png" alt="">
                            </a>
                            <a href="{!! route('user.change-language', ['en']) !!}" title="English" >
                                <img src="/images/english-img.png" alt="">
                            </a>
                        </div>
                        <div class="menu-open">
                           <div class="icon-click test">
                              <span class="toggle-menu1"></span>
                              <span class="toggle-menu2"></span>
                              <span class="toggle-menu3"></span>
                          </div>
                      </div>
                  </div>
              </div> <!-- end menu desktop -->
          </div>
        </div>

        <nav id="main-menu" class="main-menu">
            <div class="container">
                <div class="row">
                    <div class="menu-main-menu-container">
                        <ul class="menu">
                            <li class="active menu-item"><a href="{{route('trangchu')}}">{{ trans('menu.trangchu') }}</a></li>
                            <li class="menu-item" ><a href="{{route('post.detail',['slug'=>'ve-chung-toi'])}}">{{ trans('menu.vechungtoi') }}</a></li>
                            <li class="menu-item menu-item-has-children" ><a href="{{route('product.list')}}">{{ trans('menu.sanpham') }}</a>
                                <ul class="sub-menu">
                                    @foreach($cats as $cat)
                                    <li class="menu-item"><a href="{{ route('product-one.list',['slug'=>$cat->slug]) }}">{{ getName($cat) }}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                            <li class="menu-item menu-item-has-children"><a href="{{route('post.list')}}">{{ trans('menu.baiviet') }}</a>
                                <ul class="sub-menu">
                                    <li class="menu-item"><a href="{{ route('tintuc.list') }}">{{ trans('menu.tintuc') }}</a></li>
                                    <li class="menu-item"><a href="{{ route('khuyenmai.list') }}">{{ trans('menu.khuyenmai') }}</a></li>
                                </ul>
                            </li>
                            <li class="menu-item"><a href="{{route('lienhe.get')}}">{{ trans('menu.lienhe') }}</a></li>
                            <li class="menu-item"><a href="{{route('datlich.get')}}">{{ trans('menu.datlich') }}</a></li>
                            <li class="menu-item"><a href="{{route('benhan.get')}}">{{ trans('menu.tracuu') }}</a></li>
                            <li class="menu-item"><a href="{{route('giohang.get')}}">{{ trans('menu.giohang') }}</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <div class="search-header search-mobi  clearfix">
        	<div class="form-search">
        		<form role="search" method="get" class="search-form" action="{{ route('search') }}" title="Tìm kiếm">
        			<button  type="submit" class="search-submit"><i class="fa fa-search" aria-hidden="true"></i></button>
        			<label class="ip-form" title="Tìm kiếm">
        				<input  type="search" class="search-field" placeholder="Nhập từ khóa" value="" name="q" />
        			</label>
        			<input type="hidden" name="" value="" />
        		</form>
        	</div>
        </div><!--  end search -->
        <div class="menu-mobi">
        	<div class="x-cloes">
        		<div class="icon-click">
        			<span class="toggle-menu1"></span>
        			<span class="toggle-menu3"></span>
        		</div>
        	</div> <!-- end nut thoát -->
        	<div class="menu-sx">
        		<nav id="main-menu" class="main-menu-mobi">
        			<div class="menu-main-menu-container">
        				<ul class="menu">
        					<li class="active menu-item"><a href="{{route('trangchu')}}">{{ trans('menu.trangchu') }}</a></li>
                            <li class="menu-item"><a href="{{route('post.detail',['slug'=>'ve-chung-toi'])}}">{{ trans('menu.vechungtoi') }}</a></li>
                            <li class="menu-item menu-item-has-children"><a href="{{route('product.list')}}">{{ trans('menu.sanpham') }}</a>
                                 <ul class="sub-menu">
                                    @foreach($cats as $cat)
                                    <li class="menu-item"><a href="{{ route('product-one.list',['slug'=>$cat->slug]) }}">{{ getName($cat) }}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                            <li class="menu-item menu-item-has-children"><a href="{{route('post.list')}}">{{ trans('menu.baiviet') }}</a>
                                <ul class="sub-menu">
                                    <li class="menu-item"><a href="{{ route('tintuc.list') }}">{{ trans('menu.tintuc') }}</a></li>
                                    <li class="menu-item"><a href="{{ route('khuyenmai.list') }}">{{ trans('menu.khuyenmai') }}</a></li>
                                </ul>
                            </li>
                            <li class="menu-item"><a href="{{route('lienhe.get')}}">{{ trans('menu.lienhe') }}</a></li>
                            <li class="menu-item"><a href="{{route('datlich.get')}}">{{ trans('menu.datlich') }}</a></li>
                            <li class="menu-item"><a href="{{route('benhan.get')}}">{{ trans('menu.tracuu') }}</a></li>
        					<li class="menu-item"><a href="{{route('giohang.get')}}">{{ trans('menu.giohang') }}</a></li>
        				</ul>
        			</div>
        		</nav>
            </div>
        </div> <!-- end menu mobile -->

    </div>
</header>
