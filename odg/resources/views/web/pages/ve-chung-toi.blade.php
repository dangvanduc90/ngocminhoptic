@extends('web.layouts.main')

@section('title')
Về chúng tôi
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
                <h1 class="page-title">Về chúng tôi</h1>
            </div>
        </div>
    </div> <!-- end -->

    <div class="about-us clearfix">
        <div class="container">
            <h2 class="title-about">MAKE WOW HAPPEN NOW!</h2>
            <div class="about-us-content">
                <div class="us-content">
                    <div class="cont-img col-sm-6">
                        <img src="{{asset('frontend/images/img-ve-chung-toi.png')}}" alt="">
                    </div>
                    <div class="cont-title col-sm-6">
                        <p>
                            Chuyên cung cấp dịch vụ nghỉ dưỡng hạng sang, chúng tôi luôn lắng nghe và mang đến những trải nghiệm tốt nhất đáp ứng mong muốn của riêng bạn.
                        </p>
                        <p>
                            Mỗi kì nghỉ không chỉ mang màu sắc khác biệt như cá tính của bạn, mà còn cho bạn tận hưởng những khung cảnh thiên nhiên đẹp nguyên sơ tại những nơi nghỉ dưỡng 5-6* đẳng cấp.
                        </p>
                    </div> 
                </div>
                <div class="us-content">
                    <div class="cont-img col-sm-6">
                       <img src="{{asset('frontend/images/img-ve-chung-toi.png')}}" alt="">
                   </div>
                   <div class="cont-title col-sm-6">
                       <p>
                        Với mong muốn truyền cảm hứng cho mọi người, WOWHOLIDAY đã xây dựng kênh nội dung chuyên biệt về du lịch bao gồm hàng nghìn bài viết chất lượng cao để khách hàng có thể tìm hiểu và lựa chọn sản phẩm, dịch vụ phù hợp với nhu cầu bản thân.
                    </p>
                    <p>
                        Được thành lập bởi những chuyên gia hơn 20 năm kinh nghiệm, am hiểu và say mê du lịch, khao khát cung cấp dịch vụ nghỉ dưỡng của người Việt nhưng mang đẳng cấp quốc tế.
                    </p>
                </div>
            </div>
            <div class="us-content">
             <div class="cont-img col-sm-6">
                 <img src="{{asset('frontend/images/img-ve-chung-toi.png')}}" alt="">
             </div>
             <div class="cont-title col-sm-6">
                <p>
                    TỐC ĐỘ - Phục vụ tức thì và luôn đảm bảo tư vấn khách hàng nhanh chóng. Chúng tôi luôn đưa tốc độ phục vụ là yếu tố hàng đầu khi đối tác có nhu cầu. Bạn sẽ không bao giờ phải lo lắng nếu bỗng chốc muốn có chuyến đi ngoài kế hoạch.
                </p>
                <p>
                    SÁNG TẠO – Ứng dụng công nghệ, thiết kế những gói sản phẩm đặc biệt theo nhu cầu khách hàng. Chúng tôi không ngừng sáng tạo để doanh nghiệp có chuyến đi tập thể khó quên và mỗi cá nhân luôn có thể F5 cuộc sống sau những ngày bận rộn.
                </p>
            </div>
        </div>
    </div>
</div>
</div>
</div>
@stop


@section('js')
@stop