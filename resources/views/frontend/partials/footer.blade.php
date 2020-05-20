<footer id="colophon" class="site-footer">
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-md-12 footer-sidebar text-center">
          @if($footer_content != null)
          <div class="widget-footer">
                @if($footer_content->image != null)
                 <a href="{{$footer_content->link}}">
                    <img src="{{$footer_content->image}}" alt="" style="width: 240px;">
                 </a>
                @endif
              {!! getContent($footer_content) !!}
          </div>
          @endif
        </div>
        <div class="col-md-12 footer-sidebar">
          <div class="form-footer">
            <p class="link-meta"><a href="#"><span>​Đăng ký email để nhận thông báo</span></a></p>
            <form class="form-inline" action="">
              <div class="form-group">
                <input type="email" id="email_contact" class="form-control" placeholder="Nhập địa chỉ email">
              </div>
              <button type="button" class="btn btn-default send_contact">Submit</button>
            </form>
          </div>
        </div><!-- end -->
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="Content-gridWrapper col-md-12">
          <span>Design by <a href="{{route('home')}}">Ngoc Minh Optic</a></span>
        </div>
      </div>
    </div>
  </div>
</footer>
<a href="javascript:void(0)" class="scrollToTop"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
