@extends('web.layouts.main')

@section('title')
Câu hỏi thường gặp
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
                    <h1 class="page-title">Câu hỏi thường gặp</h1>
                </div>
            </div>
        </div> <!-- end -->
        <div class="container cau-hoi-thuong-gap">
            <div class="panel-group" id="noi-dung-cau-hoi">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="active" data-toggle="collapse" data-parent="#noi-dung-cau-hoi" href="#cac-cau-hoi-1"><span>1.</span>Giá phòng và Thanh toán</a>
                        </h4>
                    </div>
                    <div id="cac-cau-hoi-1" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <p>Làm sao để biết được khi tôi chuyển tiền vào tài khoản của ODG TRAVEL sẽ được đảm bảo?</p>
                            <p>Khi bạn chuyển tiền vào tài khoản chúng tôi bạn đã nhận được hóa đơn thanh toán từ phía Ngân hàng nơi bạn chuyển. Nếu xảy ra sự cố chúng tôi sẽ giải quyết với ngân hàng thông qua hóa đơn mà bạn gửi cho chúng tôi.</p>
                            <p>Chúng tôi có thể đặt cọc trước 20% số tiền cần thanh toán cho khách sạn được không?</p>
                            <p>Với các đặt phòng bình thường (không áp dụng các chương trình khuyến mại) quý vị có thể đặt trước 20% để nhận đơn đặt phòng, và thanh toán phần còn lại (80% tiền phòng) cho VINASTAY.COM trước ngày nhận phòng. Đến khi nhận phòng, quý vị sẽ không phải trả thêm khoản phí nào (trừ các dịch vụ cá nhân).</p>
                            <p>Tuy nhiên vào các dịp lễ tết thì hầu hết các khách sạn cần nhận đầy đủ 100% tổng giá trị thanh toán đặt phòng sau khi quý vị đặt phòng. Khi đấy thì điều kiện đặt cọc 20% sẽ không được đảm bảo cho quý vị. Với các trường hợp này thì quý vị sẽ được chúng tôi thông báo sau khi quý vị đặt phòng.</p>
                            <p>hời gian giữ phòng là 24 tiếng, vì vậy rất gấp gáp cho chúng tôi. Chúng tôi có thể thanh toán tại khách sạn được không?</p>
                            <p>- VINASTAY.COM luôn cung cấp mức độ linh động cao nhất để đáp ứng nhu cầu quý vị. Tuy nhiên trong những thời điểm như cuối tuần, đợt cao điểm chúng tôi không chắc chắn giữ phòng nếu quý vị không thanh toán đúng hạn. Vì vậy mong quý vị hiểu và thanh toán đúng hạn để VINASTAY.COM giữ phòng tại khách sạn</p>
                            <p>Làm sao để chứng nhận với khách sạn khi tôi đến ở đã thanh toán tiền phòng qua VINASTAY.COM.com?</p>
                            <p>Khi xác nhận đặt phòng VINASTAY.COM.com sẽ gửi cho bạn một email có nội dung đầy đủ và được xem như hóa đơn để xác nhận với khách sạn về việc bạn đã thanh toán tiền phòng.</p>
                            <p>Chúng tôi có được giảm giá nếu đặt phòng số lượng lớn không?</p>
                            <p>Giá đăng trên VINASTAY.COM là giá đã bao gồm ưu đãi của VINASTAY.COM dành cho khách hàng. Tuy nhiên nếu quý vị muốn đặt phòng với số lượng lớn, chúng tôi sẽ cố gắng thương lượng với khách sạn và đưa ra giá tốt nhất có thể cho quý vị.</p>
                        </div>
                    </div>
                </div> <!-- end -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#noi-dung-cau-hoi" href="#cac-cau-hoi-2"><span>2.</span>Đặt phòng</a>
                        </h4>
                    </div>
                    <div id="cac-cau-hoi-2" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p>Làm sao để biết được khi tôi chuyển tiền vào tài khoản của ODG TRAVEL sẽ được đảm bảo?</p>
                            <p>Khi bạn chuyển tiền vào tài khoản chúng tôi bạn đã nhận được hóa đơn thanh toán từ phía Ngân hàng nơi bạn chuyển. Nếu xảy ra sự cố chúng tôi sẽ giải quyết với ngân hàng thông qua hóa đơn mà bạn gửi cho chúng tôi.</p>
                            <p>Chúng tôi có thể đặt cọc trước 20% số tiền cần thanh toán cho khách sạn được không?</p>
                            <p>Với các đặt phòng bình thường (không áp dụng các chương trình khuyến mại) quý vị có thể đặt trước 20% để nhận đơn đặt phòng, và thanh toán phần còn lại (80% tiền phòng) cho VINASTAY.COM trước ngày nhận phòng. Đến khi nhận phòng, quý vị sẽ không phải trả thêm khoản phí nào (trừ các dịch vụ cá nhân).</p>
                            <p>Tuy nhiên vào các dịp lễ tết thì hầu hết các khách sạn cần nhận đầy đủ 100% tổng giá trị thanh toán đặt phòng sau khi quý vị đặt phòng. Khi đấy thì điều kiện đặt cọc 20% sẽ không được đảm bảo cho quý vị. Với các trường hợp này thì quý vị sẽ được chúng tôi thông báo sau khi quý vị đặt phòng.</p>
                            <p>hời gian giữ phòng là 24 tiếng, vì vậy rất gấp gáp cho chúng tôi. Chúng tôi có thể thanh toán tại khách sạn được không?</p>
                            <p>- VINASTAY.COM luôn cung cấp mức độ linh động cao nhất để đáp ứng nhu cầu quý vị. Tuy nhiên trong những thời điểm như cuối tuần, đợt cao điểm chúng tôi không chắc chắn giữ phòng nếu quý vị không thanh toán đúng hạn. Vì vậy mong quý vị hiểu và thanh toán đúng hạn để VINASTAY.COM giữ phòng tại khách sạn</p>
                            <p>Làm sao để chứng nhận với khách sạn khi tôi đến ở đã thanh toán tiền phòng qua VINASTAY.COM.com?</p>
                            <p>Khi xác nhận đặt phòng VINASTAY.COM.com sẽ gửi cho bạn một email có nội dung đầy đủ và được xem như hóa đơn để xác nhận với khách sạn về việc bạn đã thanh toán tiền phòng.</p>
                            <p>Chúng tôi có được giảm giá nếu đặt phòng số lượng lớn không?</p>
                            <p>Giá đăng trên VINASTAY.COM là giá đã bao gồm ưu đãi của VINASTAY.COM dành cho khách hàng. Tuy nhiên nếu quý vị muốn đặt phòng với số lượng lớn, chúng tôi sẽ cố gắng thương lượng với khách sạn và đưa ra giá tốt nhất có thể cho quý vị.</p>
                        </div>
                    </div>
                </div><!-- end -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#noi-dung-cau-hoi" href="#cac-cau-hoi-3"><span>3.</span>Thay đổi Thông tin Đặt phòng</a>
                        </h4>
                    </div>
                    <div id="cac-cau-hoi-3" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p>Làm sao để biết được khi tôi chuyển tiền vào tài khoản của ODG TRAVEL sẽ được đảm bảo?</p>
                            <p>Khi bạn chuyển tiền vào tài khoản chúng tôi bạn đã nhận được hóa đơn thanh toán từ phía Ngân hàng nơi bạn chuyển. Nếu xảy ra sự cố chúng tôi sẽ giải quyết với ngân hàng thông qua hóa đơn mà bạn gửi cho chúng tôi.</p>
                            <p>Chúng tôi có thể đặt cọc trước 20% số tiền cần thanh toán cho khách sạn được không?</p>
                            <p>Với các đặt phòng bình thường (không áp dụng các chương trình khuyến mại) quý vị có thể đặt trước 20% để nhận đơn đặt phòng, và thanh toán phần còn lại (80% tiền phòng) cho VINASTAY.COM trước ngày nhận phòng. Đến khi nhận phòng, quý vị sẽ không phải trả thêm khoản phí nào (trừ các dịch vụ cá nhân).</p>
                            <p>Tuy nhiên vào các dịp lễ tết thì hầu hết các khách sạn cần nhận đầy đủ 100% tổng giá trị thanh toán đặt phòng sau khi quý vị đặt phòng. Khi đấy thì điều kiện đặt cọc 20% sẽ không được đảm bảo cho quý vị. Với các trường hợp này thì quý vị sẽ được chúng tôi thông báo sau khi quý vị đặt phòng.</p>
                            <p>hời gian giữ phòng là 24 tiếng, vì vậy rất gấp gáp cho chúng tôi. Chúng tôi có thể thanh toán tại khách sạn được không?</p>
                            <p>- VINASTAY.COM luôn cung cấp mức độ linh động cao nhất để đáp ứng nhu cầu quý vị. Tuy nhiên trong những thời điểm như cuối tuần, đợt cao điểm chúng tôi không chắc chắn giữ phòng nếu quý vị không thanh toán đúng hạn. Vì vậy mong quý vị hiểu và thanh toán đúng hạn để VINASTAY.COM giữ phòng tại khách sạn</p>
                            <p>Làm sao để chứng nhận với khách sạn khi tôi đến ở đã thanh toán tiền phòng qua VINASTAY.COM.com?</p>
                            <p>Khi xác nhận đặt phòng VINASTAY.COM.com sẽ gửi cho bạn một email có nội dung đầy đủ và được xem như hóa đơn để xác nhận với khách sạn về việc bạn đã thanh toán tiền phòng.</p>
                            <p>Chúng tôi có được giảm giá nếu đặt phòng số lượng lớn không?</p>
                            <p>Giá đăng trên VINASTAY.COM là giá đã bao gồm ưu đãi của VINASTAY.COM dành cho khách hàng. Tuy nhiên nếu quý vị muốn đặt phòng với số lượng lớn, chúng tôi sẽ cố gắng thương lượng với khách sạn và đưa ra giá tốt nhất có thể cho quý vị.</p>
                        </div>
                    </div>
                </div><!-- end -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#noi-dung-cau-hoi" href="#cac-cau-hoi-4"><span>4.</span>Thông tin khác</a>
                        </h4>
                    </div>
                    <div id="cac-cau-hoi-4" class="panel-collapse collapse">
                        <div class="panel-body">
                            <p>Làm sao để biết được khi tôi chuyển tiền vào tài khoản của ODG TRAVEL sẽ được đảm bảo?</p>
                            <p>Khi bạn chuyển tiền vào tài khoản chúng tôi bạn đã nhận được hóa đơn thanh toán từ phía Ngân hàng nơi bạn chuyển. Nếu xảy ra sự cố chúng tôi sẽ giải quyết với ngân hàng thông qua hóa đơn mà bạn gửi cho chúng tôi.</p>
                            <p>Chúng tôi có thể đặt cọc trước 20% số tiền cần thanh toán cho khách sạn được không?</p>
                            <p>Với các đặt phòng bình thường (không áp dụng các chương trình khuyến mại) quý vị có thể đặt trước 20% để nhận đơn đặt phòng, và thanh toán phần còn lại (80% tiền phòng) cho VINASTAY.COM trước ngày nhận phòng. Đến khi nhận phòng, quý vị sẽ không phải trả thêm khoản phí nào (trừ các dịch vụ cá nhân).</p>
                            <p>Tuy nhiên vào các dịp lễ tết thì hầu hết các khách sạn cần nhận đầy đủ 100% tổng giá trị thanh toán đặt phòng sau khi quý vị đặt phòng. Khi đấy thì điều kiện đặt cọc 20% sẽ không được đảm bảo cho quý vị. Với các trường hợp này thì quý vị sẽ được chúng tôi thông báo sau khi quý vị đặt phòng.</p>
                            <p>hời gian giữ phòng là 24 tiếng, vì vậy rất gấp gáp cho chúng tôi. Chúng tôi có thể thanh toán tại khách sạn được không?</p>
                            <p>- VINASTAY.COM luôn cung cấp mức độ linh động cao nhất để đáp ứng nhu cầu quý vị. Tuy nhiên trong những thời điểm như cuối tuần, đợt cao điểm chúng tôi không chắc chắn giữ phòng nếu quý vị không thanh toán đúng hạn. Vì vậy mong quý vị hiểu và thanh toán đúng hạn để VINASTAY.COM giữ phòng tại khách sạn</p>
                            <p>Làm sao để chứng nhận với khách sạn khi tôi đến ở đã thanh toán tiền phòng qua VINASTAY.COM.com?</p>
                            <p>Khi xác nhận đặt phòng VINASTAY.COM.com sẽ gửi cho bạn một email có nội dung đầy đủ và được xem như hóa đơn để xác nhận với khách sạn về việc bạn đã thanh toán tiền phòng.</p>
                            <p>Chúng tôi có được giảm giá nếu đặt phòng số lượng lớn không?</p>
                            <p>Giá đăng trên VINASTAY.COM là giá đã bao gồm ưu đãi của VINASTAY.COM dành cho khách hàng. Tuy nhiên nếu quý vị muốn đặt phòng với số lượng lớn, chúng tôi sẽ cố gắng thương lượng với khách sạn và đưa ra giá tốt nhất có thể cho quý vị.</p>
                        </div>
                    </div>
                </div><!-- end -->
            </div> 
        </div>

    </div>
@stop


@section('js')
@stop