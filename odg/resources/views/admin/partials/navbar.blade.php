<nav class="navbar navbar-vertical navbar-expand-lg navbar-light navbar-glass">
  <a class="navbar-brand text-left" href="#">
    <div class="d-flex align-items-center text-primary py-3">
      <div class="d-inline-flex flex-center"><span class="text-sans-serif">ODG TRAVEL</span></div>
    </div>
  </a>
  <div class="collapse navbar-collapse" id="navbarVerticalCollapse">
    <ul class="navbar-nav flex-column">
      <!-- Bảng tin -->
      <li class="nav-item">
        <a class="nav-link" href="{{route('bang-tin')}}">
          <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="far fa-chart-bar"></span></span><span>BẢNG TIN</span>
          </div>
        </a>
      </li>
    </ul>
    <hr class="border-300 my-2" />
    <ul class="navbar-nav flex-column">
      <li class="nav-item">
        <a class="nav-link dropdown-indicator" href="#user" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="setting-crm">
          <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="far fa-address-book"></span></span><span>TÀI KHOẢN</span>
          </div>
        </a>
        <ul class="nav collapse" id="user">
          <li class="nav-item"><a class="nav-link" href="#">Danh sách tài khoản</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Quyền hạn</a></li>
        </ul>
      </li>
      <li class="nav-item">
        <a class="nav-link dropdown-indicator" href="#setting" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="setting-crm">
          <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fab fa-whmcs"></span></span><span>THIẾT LẬP CHUNG</span>
          </div>
        </a>
        <ul class="nav collapse" id="setting">
          <li class="nav-item"><a class="nav-link" href="#">Phương thức thanh toán</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Banner</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Trang</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Thông tin website</a></li>
          <li class="nav-item"><a class="nav-link" href="{{route('thu-vien')}}">Quản lý file</a></li>
        </ul>
      </li>
      <li class="nav-item">
        <a class="nav-link dropdown-indicator" href="#sitemap" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="setting-crm">
          <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-wrench"></span></span><span>CÀI ĐẶT</span>
          </div>
        </a>
        <ul class="nav collapse" id="sitemap">
          <li class="nav-item"><a class="nav-link" href="#">Sitemap</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Robots</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Logs</a></li>
        </ul>
      </li>
    </ul>
    <a class="btn btn-primary btn-sm m-3" href="{{ route('logout') }}"  onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">  
      <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
              @csrf
      </form>Logout
    </a>
  </div>
</nav>