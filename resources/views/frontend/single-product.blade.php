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
                        <table class="table product-option-list">
                            <thead>
                            <tr>
                                <th>Màu</th>
                                <th>Số lương</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($obj->colors()->orderby('is_default','desc')->get() as $_color)
                            <tr>
                                <td>
                                    <div data-id ="{{$_color->id}}" data-type="2" class="color-label color-product"
                                         @if($_color->image_color != null && $_color->image_color != "")
                                            style="background-image: url('{{$_color->thumb_color}}');"
                                        @else
                                            style="background-color: {{$_color->code_color}}"
                                        @endif
                                    >
                                        <span class="mau">{{getName($_color)}}</span>
                                    </div>
                                </td>
                                <td>
                                    <div class="quantity">
                                        {{ $_color->quantity }}
                                    </div>
                                </td>
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
{{--                      <ul class="product-option-list">--}}
{{--                        @foreach($obj->colors()->orderby('is_default','desc')->get() as $_color)--}}
{{--                        @if($_color->image_color != null && $_color->image_color != "")--}}
{{--                        <li>--}}
{{--                          <div data-id ="{{$_color->id}}" data-type="2" class="color-label color-product" style="background-image: url('{{$_color->thumb_color}}');">--}}
{{--                            <span class="mau">{{getName($_color)}}</span>--}}
{{--                          </div>--}}
{{--                            <div class="quantity">--}}
{{--                                {{ $_color->quantity }}--}}
{{--                            </div>--}}
{{--                        </li>--}}
{{--                        @else--}}
{{--                        <li>--}}
{{--                          <div data-id ="{{$_color->id}}" data-type="2" class="color-label color-product" style="background-color: {{$_color->code_color}}">--}}
{{--                            <span class="mau">{{getName($_color)}}</span>--}}
{{--                          </div>--}}
{{--                            <div class="quantity">--}}
{{--                                {{ $_color->quantity }}--}}
{{--                            </div>--}}
{{--                        </li>--}}
{{--                        @endif--}}
{{--                        @endforeach--}}
{{--                      </ul>--}}
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
                  <img src="{{$product->getThumb()}}" alt="">
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
