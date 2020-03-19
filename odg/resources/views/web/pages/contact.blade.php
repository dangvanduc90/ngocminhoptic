@extends('web.layouts.main')

@section('title')
Liên hệ
@parent
@stop

@section('css')
@stop

@section('content')
<div id="content">
    <div class="baner-archive">
        <img src="{{asset('frontend/images/banner-contact.jpg')}}" alt="">
        <div class="entry-title">
            <div class="container">
                <h1 class="page-title">Thông tin liên hệ</h1>
            </div>
        </div>
    </div> <!-- end -->
    <div class="contact-us clearfix">
        <div class="container">
            <div class="contact-content row">

                <div class="contact-right col-md-7">
                    <div class="title-contact">
                        <h2>ODG TRAVEL</h2>
                    </div>
                    <div class="contact-address">
                        <h4>Trụ sở chính</h4>
                        <div class="text-address">
                            <p>38 Nguyễn Du, P. Bắc Sơn, Sầm Sơn, Thanh Hoá</p>
                            <p>(0237) 866 2468</p>
                            <p>info@vinastay.com</p>
                        </div>
                        <div class="map-address">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3755.5046706622347!2d105.8956437143867!3d19.733701736098077!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3136513d7f32f999%3A0x229392c79ff8b274!2zMzggTmd1eeG7hW4gRHUsIFAuIELhuq9jIFPGoW4sIFPhuqdtIFPGoW4sIFRoYW5oIEhvw6EsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1578275068967!5m2!1svi!2s" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                        </div>
                    </div>
                </div>
                <div class="contact-left col-md-5">
                    <div class="form-contact">
                        <div class="form-grounp">
                            <label>Họ tên</label>
                            <input type="text" name="your-name">
                        </div>
                        <div class="form-grounp">
                            <label>Số điện thoại</label>
                            <input type="text" name="phone">
                        </div>
                        <div class="form-grounp">
                            <label>Email</label>
                            <input type="email" name="email">
                        </div>
                        <div class="form-grounp">
                            <label>Tin nhắn</label>
                            <textarea name="message" rows="5"></textarea>
                        </div>
                        <button type="button">Gửi</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@stop


@section('js')
@stop