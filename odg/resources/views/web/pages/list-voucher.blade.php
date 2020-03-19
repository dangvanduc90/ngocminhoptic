@extends('web.layouts.main')

@section('title')
Voucher - combo
@parent
@stop

@section('css')
@stop

@section('content')
<div id="content">
    <div class="baner-archive">
        <img src="{{asset('frontend/images/banner-list-voucher.png')}}" alt="">
        <div class="entry-title">
            <div class="container">
                <h1 class="page-title">Voucher - Combo toàn quốc</h1>
            </div>
        </div>
    </div> <!-- end -->
    <div class="result-count clearfix">
        <div class="container">
            <div class="search-sort clearfix">
                <div class="sort clearfix sort-voucher ">
                    <p>Sắp xếp theo</p>
                    <form action="" class="form-sap-xep">

                        <div class="sap-xep">
                            <div class="form-group">
                                <select name="" id="">
                                    <option value="Bán chạy nhất">Bán chạy nhất</option>
                                    <option value="Giá tăng dần">Giá tăng dần</option>
                                    <option value="Giá giảm dần">Giá giảm dần</option>
                                </select>
                                <span class="icons-dow"><img src="{{asset('frontend/images/icons-dow-box.png')}}" alt=""></span>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="tim-kiem-click click-voucher">
                    <a href="javascript:void(0)" class="click-search">Tìm kiếm nâng cao<span class="icons-dow"><img src="{{asset('frontend/images/icons-dow-box.png')}}" alt=""></span></a>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="tim-kiem-nca clearfix tim-kiem-voucher">
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
                        <label for="">Du thuyền</label>
                    </div>
                    <div class="form-group">
                        <input type="checkbox" class="form-check-input" value="">
                        <label for="">Căn hộ</label>
                    </div>
                    <div class="form-group">
                        <input type="checkbox" class="form-check-input" value="">
                        <label for="">Homestay</label>
                    </div>
                    <div class="form-group">
                        <input type="checkbox" class="form-check-input" value="">
                        <label for="">Biệt thự</label>
                    </div>
                    <div class="form-group">
                        <input type="checkbox" class="form-check-input" value="">
                        <label for="">Resort</label>
                    </div>
                    <div class="form-group">
                        <input type="checkbox" class="form-check-input" value="">
                        <label for="">Khách sạn</label>
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
        <div class="list-voucher clearfix bai-viet">
           <div class="contenr-voucher clearfix">
            <div class="thumbnail-voucher">
                <a href=""><img src="{{asset('frontend/images/img-list-voucher.png')}}" alt=""></a>
            </div>
            <div class="text-box">
                <a href="#" class="chuyen-muc">Hạ long</a>
                <h3><a href="#">Fusion Maia Đà Nẵng</a></h3>

                <div class="cac-tien-ich">
                    <p class="tien-ich">
                      <img src="{{asset('frontend/images/icons-tien-ich-1.png')}}" alt="">
                      <span class="tsdf">Bể bơi</span>
                  </p>
                  <p class="tien-ich">
                      <img src="{{asset('frontend/images/icons-tien-ich-2.png')}}" alt="">
                      <span class="tsdf">Nhà ăn</span>
                  </p>
                  <p class="tien-ich">
                    <img src="{{asset('frontend/images/icons-tien-ich-3.png')}}" alt="">
                    <span class="tsdf">Phòng tắm</span>
                </p>
                <p class="tien-ich">
                    <img src="{{asset('frontend/images/icons-tien-ich-4.png')}}" alt="">
                    <span class="tsdf">Phòng rượu</span>
                </p>
                <p class="tien-ich">
                    <img src="{{asset('frontend/images/icons-tien-ich-5.png')}}" alt="">
                    <span class="tsdf">Tivi</span>
                </p>
            </div>
            <p class="noi-dung">
                Tọa lạc trên ngọn đồi riêng tư với tầm nhìn tuyệt đẹp ra Vịnh Hạ Long – một trong bảy kì quan thiên nhiên thế giới, FLC Grand Hotel Hạ Long sẽ là một trong những lựa chọn hoàn hảo cho kì nghỉ của bạn.
            </p>

            <p class="mox-link">
                <a href="{{route('Voucher.detail',['slug'=>'voucher-flc-2020-sieu-re-ap-dung-he-thong-flc-tren-toan-quoc'])}}">Chi tiết</a>
            </p>
        </div>

    </div> <!-- end -->
    <div class="contenr-voucher clearfix">
        <div class="thumbnail-voucher">
            <a href=""><img src="{{asset('frontend/images/img-list-voucher.png')}}" alt=""></a>
        </div>
        <div class="text-box">
            <a href="#" class="chuyen-muc">Hạ long</a>
            <h3><a href="#">Fusion Maia Đà Nẵng</a></h3>

            <div class="cac-tien-ich">
                <p class="tien-ich">
                  <img src="{{asset('frontend/images/icons-tien-ich-1.png')}}" alt="">
                  <span class="tsdf">Bể bơi</span>
              </p>
              <p class="tien-ich">
                  <img src="{{asset('frontend/images/icons-tien-ich-2.png')}}" alt="">
                  <span class="tsdf">Nhà ăn</span>
              </p>
              <p class="tien-ich">
                <img src="{{asset('frontend/images/icons-tien-ich-3.png')}}" alt="">
                <span class="tsdf">Phòng tắm</span>
            </p>
            <p class="tien-ich">
                <img src="{{asset('frontend/images/icons-tien-ich-4.png')}}" alt="">
                <span class="tsdf">Phòng rượu</span>
            </p>
            <p class="tien-ich">
                <img src="{{asset('frontend/images/icons-tien-ich-5.png')}}" alt="">
                <span class="tsdf">Tivi</span>
            </p>
        </div>
        <p class="noi-dung">
            Tọa lạc trên ngọn đồi riêng tư với tầm nhìn tuyệt đẹp ra Vịnh Hạ Long – một trong bảy kì quan thiên nhiên thế giới, FLC Grand Hotel Hạ Long sẽ là một trong những lựa chọn hoàn hảo cho kì nghỉ của bạn.
        </p>

        <p class="mox-link">
             <a href="{{route('Voucher.detail',['slug'=>'voucher-flc-2020-sieu-re-ap-dung-he-thong-flc-tren-toan-quoc'])}}">Chi tiết</a>
        </p>
    </div>

</div> <!-- end -->
<div class="xem-them-de">
    <button type="submit" class="btn btn-default">Hiển thị thêm</button>
</div>
</div> <!--  end bài viết -->
<div class="list-voucher clearfix ket-qua-tim-kiem">
    <div class="contenr-voucher clearfix">
        <div class="thumbnail-voucher">
            <a href=""><img src="{{asset('frontend/images/img-list-voucher.png')}}" alt=""></a>
        </div>
        <div class="text-box">
            <a href="#" class="chuyen-muc">Hạ long</a>
            <h3><a href="#">Fusion Maia Đà Nẵng</a></h3>
            <div class="cac-tien-ich">
                <p class="tien-ich">
                  <img src="{{asset('frontend/images/icons-tien-ich-1.png')}}" alt="">
                  <span class="tsdf">Bể bơi</span>
              </p>
              <p class="tien-ich">
                  <img src="{{asset('frontend/images/icons-tien-ich-2.png')}}" alt="">
                  <span class="tsdf">Nhà ăn</span>
              </p>
              <p class="tien-ich">
                <img src="{{asset('frontend/images/icons-tien-ich-3.png')}}" alt="">
                <span class="tsdf">Phòng tắm</span>
            </p>
            <p class="tien-ich">
                <img src="{{asset('frontend/images/icons-tien-ich-4.png')}}" alt="">
                <span class="tsdf">Phòng rượu</span>
            </p>
            <p class="tien-ich">
                <img src="{{asset('frontend/images/icons-tien-ich-5.png')}}" alt="">
                <span class="tsdf">Tivi</span>
            </p>
        </div>
        <p class="noi-dung">
            Tọa lạc trên ngọn đồi riêng tư với tầm nhìn tuyệt đẹp ra Vịnh Hạ Long – một trong bảy kì quan thiên nhiên thế giới, FLC Grand Hotel Hạ Long sẽ là một trong những lựa chọn hoàn hảo cho kì nghỉ của bạn.
        </p>
        <p class="mox-link">
            <a href="{{route('Voucher.detail',['slug'=>'voucher-flc-2020-sieu-re-ap-dung-he-thong-flc-tren-toan-quoc'])}}">Chi tiết</a>

        </p>
    </div>

</div> <!-- end -->
<div class="contenr-voucher clearfix">
    <div class="thumbnail-voucher">
        <a href=""><img src="{{asset('frontend/images/img-list-voucher.png')}}" alt=""></a>
    </div>
    <div class="text-box">
        <a href="#" class="chuyen-muc">Hạ long</a>
        <h3><a href="#">Fusion Maia Đà Nẵng</a></h3>
        <div class="cac-tien-ich">
            <p class="tien-ich">
              <img src="{{asset('frontend/images/icons-tien-ich-1.png')}}" alt="">
              <span class="tsdf">Bể bơi</span>
          </p>
          <p class="tien-ich">
              <img src="{{asset('frontend/images/icons-tien-ich-2.png')}}" alt="">
              <span class="tsdf">Nhà ăn</span>
          </p>
          <p class="tien-ich">
            <img src="{{asset('frontend/images/icons-tien-ich-3.png')}}" alt="">
            <span class="tsdf">Phòng tắm</span>
        </p>
        <p class="tien-ich">
            <img src="{{asset('frontend/images/icons-tien-ich-4.png')}}" alt="">
            <span class="tsdf">Phòng rượu</span>
        </p>
        <p class="tien-ich">
            <img src="{{asset('frontend/images/icons-tien-ich-5.png')}}" alt="">
            <span class="tsdf">Tivi</span>
        </p>
    </div>
    <p class="noi-dung">
        Tọa lạc trên ngọn đồi riêng tư với tầm nhìn tuyệt đẹp ra Vịnh Hạ Long – một trong bảy kì quan thiên nhiên thế giới, FLC Grand Hotel Hạ Long sẽ là một trong những lựa chọn hoàn hảo cho kì nghỉ của bạn.
    </p>
    <p class="mox-link">
         <a href="{{route('Voucher.detail',['slug'=>'voucher-flc-2020-sieu-re-ap-dung-he-thong-flc-tren-toan-quoc'])}}">Chi tiết</a>

    </p>
</div>

</div> <!-- end -->


<div class="xem-them-de">
    <button type="submit" class="btn btn-default">Hiển thị thêm</button>
</div>
</div> <!--  end kết quả tìm kiếm -->
</div>
</div>
@stop


@section('js')
@stop