<div class="row">
  <div class="col-12">
    <div class="card mb-3 btn-reveal-trigger">
      <div class="card-header position-relative minh-25vh mb-8">
        <div class="cover-image">
          <div class="bg-holder rounded-soft rounded-bottom-0" style="background-image:url({{asset('backend/pages/assets/img/generic/4.jpg')}});">
          </div>
        </div>
        <div class="avatar avatar-5xl avatar-profile shadow-sm img-thumbnail rounded-circle">
          <div class="h-100 w-100 rounded-circle overflow-hidden position-relative"><img src="{{asset('backend/pages/assets/img/team/2.jpg')}}" width="200" alt="">
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-12">
    <div class="card mb-3">
      <div class="card-header">
        <h5 class="mb-0">Thông tin cá nhân</h5>
      </div>
      <div class="card-body bg-light">
        <form method="POST" action="{{route('profile.post')}}">
          @csrf
          <div class="row">
            <div class="col-lg-12">
              <div class="form-group">
                <label for="first-name">Tài khoản đăng nhập</label>
                <input class="form-control" name="username" type="text" value="{{$obj->username}}" required>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="form-group">
                <label for="last-name">Email</label>
                <input class="form-control" name="email" type="email" value="{{$obj->email}}" required>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="form-group">
                <label for="email1">Mật khẩu</label>
                <input class="form-control" name="password" type="password" value="" placeholder="Nhập mật khẩu mới nếu bạn muốn thay đổi">
              </div>
            </div>
            <div class="col-12 d-flex justify-content-end">
              <button class="btn btn-primary" type="submit">Update</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>