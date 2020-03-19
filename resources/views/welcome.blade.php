@extends('frontend.layouts.deafault')

@section('title')
Trang chủ
@endsection

@section('content')
<div id="primary" class="content-area">
    <main id="main" class="site-main">
        <div class="container">
            <div class="row">
                <div class="list-product-cart" id="div_product">
                	 <h2 class="text-post-gig"></h2>
                   @include('frontend.partials.list-product')
                </div>
                <div class="banner-images col-md-12">
                    <ul class="lider-banner">
                        @foreach($banners as $banner)
                        <li class="tiem"><a href="{{$banner->link}}" title="{{$banner->title}}"><img src="{{$banner->image}}" alt="{{$banner->title}}"></a></li>
                        @endforeach
                    </ul>
                </div> <!-- end slider -->
                <div class="category-archive clearfix category-home">
                    <div class="home-post clearfix">
                        <h2 class="text-post-gig">{{ trans('menu.tintuc') }}</h2>
                        <div class="connten-post">
                            @foreach($posts as $post)
                            <div class="col-md-3 col-sm-6 col-xs-6 post-listing">
                                <div class="news_focus">
                                    <div class="post-thumbnail1">
                                        <a href="{{route('post.detail',['slug'=>$post->slug])}}">
                                            <img src="{{$post->thumb}}" alt="{{getName($post)}}">
                                        </a>
                                    </div>
                                    <div class="entry">
                                        <h3 class="post-box-title">
                                            <a href="{{route('post.detail',['slug'=>$post->slug])}}" title="{{getName($post)}}" >{{getName($post)}}</a>
                                        </h3>
                                        <p class="post-meta">{{date('d/m/Y', strtotime($post->created_at))}}</p>
                                        <p class="noi-dung">
                                            {{strlen(getDes($post)) > 150 ? substr(getDes($post), 0, 150).'...' : getDes($post)}}
                                        </p>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- end dang sách sản phẩm -->
        <div id="strc1balata" class="pointer-even">
            <div class="container">
            	<h2 class="text-doi-tac">{{ trans('menu.doitac') }}</h2>
            	<div class="slider-doi-tac">
            		<div class="slidedoitac">
            			 @foreach($thuonghieus as $thuonghieu)
			                <div class="comp-j6" title="{{$thuonghieu->title}}">
			                	<a href="{{$thuonghieu->link}}" ><img src="{{$thuonghieu->image}}"></a>
			                </div>
		                @endforeach
            		</div>
            	</div>
            </div>
        </div>
    </main>
</div>
<div id="div_modal_quick_view"></div>
@endsection

@section('js')
{{-- <script type="text/javascript">
    base_url = "{{config('admin.base_url')}}";
    getProduct_url = base_url + "ajax/getProductInfo";
    sendContact_url = base_url + "ajax/sendContact";
    searchProduct_url = base_url + "ajax/searhProduct";
    $(document).on('click','.quick-view-button', {} ,function(e){
        _product_id = $(this).data('id');
        $.get(getProduct_url, {product_id: _product_id}, function(data){
            $('#div_modal_quick_view').html(data);
             // slider sản phẩm
            $('.image-slider').lightSlider({
                gallery:true,
                item:1,
                thumbItem:7,
                slideMargin: 0,
                auto:false,
                loop:false,
            });
            $('#view_conter').modal('toggle');
        });
    });

    $('#btn_search').click(function(){
        _text_search = $('#text_search').val();
        $.get(searchProduct_url, {text_search: _text_search}, function(data){
            $('#div_product').html(data);
        });
    });

    $('.send_contact').click(function(){
        _email = $('#email_contact').val();
        if(emailIsValid(_email)){
            $.get(sendContact_url, {email: _email}, function(data){
                $('#email_contact').val('');
                alert(data);
            });
        }else{
            alert('Email không hợp lệ !');
        }
    });

</script> --}}
@endsection
