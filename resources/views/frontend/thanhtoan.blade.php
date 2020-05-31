@extends('frontend.layouts.deafault')

@section('title')
{{ trans('menu.thtt') }}
@endsection

@section('content')
<div class="container">
    <div class="row">
        <div id="primary" class="content-area col-md-12">
            <main id="main" class="site-main">
                <div class="category-header">
                    <h1 class="entry-title">{{ trans('menu.thtt') }}</h1>
                </div>
                <div class="notices-wrapper clearfix">
                    <form name="checkout" action="{{route('thanhtoan.post')}}" method="POST" class="product-checkout">
                    @csrf
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                     <div class="col2-set" id="customer_details">
                        <div class="row">
                            <div class="col-md-7 review-heading">
                                <table class="table table-hover">
                                    <thead>
                                        <tr class="tieu-de-bang">
                                            <th class="product-thumbnail">{{ trans('menu.anhsp') }}</th>
                                            <th class="product-name">{{ trans('menu.sanpham') }}</th>
                                            <th class="product-price">{{ trans('menu.thongtin') }}</th>
                                            <th class="product-quantity">{{ trans('menu.soluong') }}</th>
                                            <th class="product-subtotal">{{ trans('menu.thanhtien') }}</th>
                                        </tr>
                                    </thead>
                                    <tbody class="thong-tin-san-pham">
                                        @php
                                        $items = Cart::getContent();
                                        $i = 1;
                                        @endphp
                                        @foreach($items as $item)
                                        <tr class="cart_item">
                                            <td class="product-thumbnail" data-title="Ảnh sản phẩm">
                                                <a href="#">
                                                   @if( $item->attributes->has('image') )
                                                   <img width="50" height="50" src="{{$item->attributes['image']}}" class="size-thumbnail" alt="">
                                                   @endif
                                               </a>
                                           </td>

                                        <td class="product-name" data-title="Sản phẩm">
                                            <a href="#">{{getName($item)}}</a>
                                        </td>
                                        <td class="product-tt" data-title="{{ trans('menu.thongtin') }}">
                                            <span class="info">{{getColorCart($item)}}</span>
                                        </td>
                                        <td class="product-quantity" data-title="Số lượng">
                                            <div class="quantity buttons_added">
                                                <span>{{$item->quantity}}</span>
                                            </div>
                                        </td>
                                        <td class="product-subtotal" data-title="Tổng">
                                            <span class="amount">{{number_format($item->getPriceSum())}}</span>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <div class="col-md-5 billing-fields">
                            <div class="form-group">
                                <span class="icon_checkout ico-name"></span>
                                <input type="text" class="form-control" id="ho-ten" value="{{ old('name') }}" name="name" placeholder="{{ trans('menu.nhaphovaten') }}" required>
                            </div>
                            <div class="form-group">
                                <span class="icon_checkout ico-tel"></span>
                                <input type="text" class="form-control" name="phone" value="{{ old('phone') }}" placeholder="{{ trans('menu.nhapdienthoai') }}" required>
                            </div>
                            <div class="form-group">
                                <span class="icon_checkout ico-diachi"></span>
                                <input type="text" class="form-control" name="address" value="{{ old('address') }}" placeholder="{{ trans('menu.nhapdiachi') }}" maxlength="191" required>
                            </div>
                            <div class="form-group">
                                <span class="icon_checkout ico-email"></span>
                                <input type="email" class="form-control" name="email" id="" value="{{ old('email') }}" placeholder="{{ trans('menu.nhapemail') }}" >
                            </div>
                            <div class="form-group">
                                <span class="icon_checkout ico-noi-dung"></span>
                                <textarea name="content" class="form-control" id="" cols="30" rows="5" placeholder="{{ trans('menu.noidung') }}" >{{ old('content') }}</textarea>
                             </div>
                            <button type="submit" class="btn btn-default" data-target="">{{ trans('menu.thtt') }} *</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</main>
</div>
</div>
</div>
@endsection
