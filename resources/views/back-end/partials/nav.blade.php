<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav metismenu" id="side-menu">
            @include('back-end.partials.nav-header')
            <li class={{$flag == "admin-home"  ? "active" : ""}}>
                <a href="{{route('benh-an.index')}}">
                    <i class="fa fa-bar-chart-o"></i>
                    <span class="nav-label">Hệ thống quản lý</span>
                </a>
            </li>
            <li class={{$flag == "report"  ? "active" : ""}}>
                <a href="{{route('report')}}">
                    <i class="fa fa-bar-chart-o"></i>
                    <span class="nav-label">Thống kê</span>
                </a>
            </li>
            <li class={{$flag == "product" ||  $flag == "color" || $flag == "type" ? "active" : ""}}>
                <a href="#"><i class="fa fa-diamond"></i> <span class="nav-label">Sản phẩm bán</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse">
                    <li class={{$flag == "product"  ? "active" : ""}}><a href="{{route('product.index')}}">Danh sách</a></li>
                    <li class={{$flag == "color"  ? "active" : ""}}><a href="{{route('color.index')}}">Màu sắc</a></li>
                    <li class={{$flag == "type"  ? "active" : ""}}><a href="{{route('type.index')}}">Menu sản phẩm</a></li>
                </ul>
            </li>
            <li class={{$flag == "donhang"  ? "active" : ""}}>
                <a href="{{route('donhang.show')}}"><i class="fa fa-diamond"></i> <span class="nav-label">Đơn hàng</span></a>
            </li>
            <li class={{$flag == "khambenh"  ? "active" : ""}}>
                <a href="{{route('san-pham.index')}}"><i class="fa fa-diamond"></i> <span class="nav-label">Sản phẩm khám</span></a>
            </li>
            <li class={{$flag == "post"  ? "active" : ""}}>
                <a href="{{route('post.index')}}"><i class="fa fa-file-text-o"></i> <span class="nav-label">Tin tức</span></a>
            </li>
            <li class={{$flag == "coso"  ? "active" : ""}}>
                <a href="{{route('coso.index')}}"><i class="fa fa-file-text-o"></i> <span class="nav-label">Cơ sở</span></a>
            </li>
            {{-- <li class={{$flag == "category"  ? "active" : ""}}>
                <a href="{{route('category.index')}}"><i class="fa fa-diamond"></i> <span class="nav-label">Chuyên Mục</span></a>
            </li> --}}
            <li class={{$flag == "contact"  ? "active" : ""}}>
                <a href="{{route('contact.show')}}"><i class="fa fa-tags"></i> <span class="nav-label">Email đáy trang</span></a>
            </li>
             <li class={{$flag == "lienhe"  ? "active" : ""}}>
                <a href="{{route('lienhe.index')}}"><i class="fa fa-tags"></i> <span class="nav-label">Thông tin liên hệ</span></a>
            </li>
           {{--  <li class={{$flag == "album"  ? "active" : ""}}>
                <a href="{{route('album.index')}}"><i class="fa fa-picture-o"></i> <span class="nav-label">Album</span></a>
            </li>
            <li class={{$flag == "media"  ? "active" : ""}}>
                <a href="{{route('media.index')}}"><i class="fa fa-film"></i> <span class="nav-label">Media</span></a>
            </li> --}}
           {{--  <li class={{$flag == "users"  ? "active" : ""}}>
                <a href="{{route('user.index')}}">
                    <i class="fa fa-users"></i>
                    <span class="nav-label">Người Dùng</span>
                </a>
            </li> --}}
            <li class={{$flag == "seo"  ? "active" : ""}}>
                <a href="{{route('seo.index')}}"><i class="fa fa-diamond"></i> <span class="nav-label">Cấu hình SEO</span></a>
            </li>
            <li class={{$flag == "files" ||  $flag == "webinfo" ||  $flag == "section"
                    || $flag == "page"  || $flag == "banner" || $flag == "icon" || $flag == "content"
                    ? "active" : ""}}>
                <a href="#"><i class="fa fa-wrench"></i> <span class="nav-label">Thiết lập</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse">
                    <li class={{$flag == "banner"  ? "active" : ""}}><a href="{{route('banner.index')}}">Nội dung</a></li>
                    <li class={{$flag == "page"  ? "active" : ""}}><a href="{{route('page.index')}}">Cấu hình Trang</a></li>
                    <li class={{$flag == "webinfo"  ? "active" : ""}}><a href="{{route('webinfo.index')}}">Cấu hình Thông Tin Web</a></li>
                    <li class={{$flag == "files"  ? "active" : ""}}><a href="{{route('admin.files')}}">Source Files</a></li>
                </ul>
            </li>
            <li class="landing_link">
                <a target="_blank" href="{{route('trangchu')}}"><i class="fa fa-star"></i> <span class="nav-label">Website</span></a>
            </li>
        </ul>
    </div>
</nav>
