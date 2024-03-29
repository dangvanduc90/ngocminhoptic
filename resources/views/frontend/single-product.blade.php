@extends('frontend.layouts.deafault')

@section('title')
{{getName($obj)}}
@endsection

@section('content')
<div class="container">
  <div class="row">
    <div id="primary" class="content-area col-md-12">
      <main id="main" class="site-main">
<!--         <div class="breadcrums ">
          <div id="crumbs">
            <span><a href="{{route('trangchu')}}">{{ trans('menu.trangchu') }}</a></span>
            <span >/</span>
            <span class="delimiter">{{ getName($obj) }}</span>
          </div>
        </div> -->
        <div class="single-product clearfix">
          <div class="row">
            <div class="col-md-6 woocommerce-product" id="div_color">
              @include('frontend.partials.color2')
            </div> <!-- end slider -->
            <div class="col-md-6 entry-summary">
              <div class="list-text">
                <div class="columns">
                  <h1 class="product-name">{{getName($obj)}}</h1>
                  <p class="page-sku"> {{ trans('menu.masp') }} :  {{$obj->sku}}</p>
                  <p class="product-price">
                    <span class="prix">Prix</span>
                    <span class="item-price">{{number_format($obj->price)}} VNĐ</span>
                  </p>
                  <input type="hidden" name="product_id" id="product_id" value="{{$obj->id}}">
                  <div class="product-option-item">
                    <div class="option-item">
                        <label class="option-label">{{ trans('menu.mau') }}</label>
                        <ul class="product-option-list">
                            @foreach($colors as $key => $_color)
                                <li>
                                    <div data-id ="{{$_color->id}}" data-type="1" class="color-label color-product @if($key == 0) active @endif">
                                        <span class="mau">{{getName($_color)}}</span>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="option-quantity">
                      <label class="option-label">{{ trans('menu.soluong') }}</label>
                      <input type="number" id="qty_product" name="" min="0" max="100"value="1">
                    </div>
                    <button type="button" class="btn btn-default add_cart">{{ trans('menu.themvaogiohang') }}</button>
                      <div class="clearfix"></div>
                      <br />
                      <div class="option-description">
                          {!! getDescription($obj) !!}
                      </div>
                  </div>
                </div> <!-- end -->
              </div>  <!-- end -->
            </div>
          </div>
        </div>
        <div class="noi-dung-san-pham">
          <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#mo-ta">{{ trans('menu.ttctsp') }}</a></li>
            <li><a data-toggle="tab" href="#chat-lieu">{{ trans('menu.ttkhac') }}</a></li>
          </ul>
          <div class="tab-content">
            <div id="mo-ta" class="tab-pane fade in active">
              {!! getContent($obj) !!}
            </div>
            <div id="chat-lieu" class="tab-pane fade">
              {!! getNote($obj) !!}
            </div>
          </div>
        </div> <!-- end tab -->

        <div class="related-products">
          <h2 class="related-products-title">
            <span>{{ trans('menu.splienquan') }}</span>
          </h2>
          <div class="products-conter">
            <ul class="products-list">
              @foreach($products as $product)
              <li class="item">
                <div class="thums">
                    <a href="{{route('product.detail',['slug'=>$product->slug])}}">
                        <img src="{{$product->avatar->product_image}}" alt="{{getName($product)}}" title="{{getName($product)}}">
                    </a>
                </div>
                <div class="product-item-product">
                  <a href="{{route('product.detail',['slug'=>$product->slug])}}" class="product-item-root" title="{{getName($product)}}" >
                    <h3 class="product-item-name">{{getName($product)}}</h3>
                  </a>
                  <hr class="line-between">
                  <div class="product-item-price">
                    <span class="prix">Prix</span>
                    <span class="item-price">{{number_format($product->price)}} VNĐ</span>
                  </div>
                </div>
              </li>
              @endforeach
            </ul>
          </div>
        </div>
      </main>
    </div>
  </div>
</div>
@endsection
