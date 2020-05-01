    <div class="row">
        <div id="primary" class="content-area col-md-12">
            <main id="main" class="site-main">

<!--                 <div class="breadcrums">
                    <div id="crumbs">
                        <span><a href="{{route('trangchu')}}">{{ trans('menu.trangchu') }}</a></span>
                        <span >/</span>
                        <span class="delimiter">{{ trans('menu.giohang') }}</span>
                    </div>
                </div> -->
                <div class="category-header">
                    <h1 class="entry-title">{{ trans('menu.giohang') }}</h1>
                </div>
                <div class="shop-table">
                    <div class="gio-hang-cua-ban clearfix">
                        <form class="cart-form" action="">
                            <table class="table table-hover">
                                <thead>
                                    <tr class="tieu-de-bang">
                                        <th class="product-stt">{{ trans('menu.stt') }}</th>
                                        <th class="product-thumbnail">{{ trans('menu.anhsp') }}</th>
                                        <th class="product-name">{{ trans('menu.sanpham') }}</th>
                                        <th class="product-price">{{ trans('menu.thongtin') }}</th>
                                        <th class="product-price">{{ trans('menu.dongia') }}</th>
                                        <th class="product-quantity">{{ trans('menu.soluong') }}</th>
                                        <th class="product-subtotal">{{ trans('menu.thanhtien') }}</th>
                                        <th class="product-remove"></th>
                                    </tr>
                                </thead>
                                <tbody class="thong-tin-san-pham" id='tbody_giohang'>
                                    @php
                                    $items = Cart::getContent();
                                    $i = 1;
                                    @endphp
                                    @foreach($items as $item)
                                    <tr class="cart_item">
                                        <td class="product-stt" data-title="Stt">
                                            <span>{{$i}}</span>
                                            <div class="dropdown  mobile">
                                               <a data-id="{{$item->id}}" class="removeProductCart"><span class="glyphicon glyphicon-trash"></span></a>
                                           </div>
                                       </td>
                                       <td class="product-thumbnail" data-title="{{ trans('menu.anhsp') }}">
                                        <a target="_blank" href="{{ route('product.detail', ['slug' => $item->attributes['slug']]) }}">
                                            @if( $item->attributes->has('image') )
                                                <img width="50" height="50" src="{{$item->attributes['image']}}" class="size-thumbnail" alt="">
                                            @endif
                                        </a>
                                    </td>

                                    <td class="product-name" data-title="{{ trans('menu.sanpham') }}">
                                        <a target="_blank" href="{{ route('product.detail', ['slug' => $item->attributes['slug']]) }}">{{getName($item)}}</a>
                                    </td>

                                    <td class="product-tt" data-title="{{ trans('menu.thongtin') }}">
                                        <span class=""></span>
                                    </td>
                                    <td class="product-price" data-title="Giá">
                                        <span class="amount">{{number_format($item->price)}}</span>
                                    </td>
                                    <td class="product-quantity"  data-title="{{ trans('menu.soluong') }}">
                                        <div class="quantity buttons_added">
                                            <input type="number" data-product_id="{{ $item->attributes['product_id'] ?? 0 }}" data-color_id="{{ $item->attributes['color_id'] ?? 0 }}" data-id="{{$item->id}}" class="input-text input_quantity_product" step="1" min="0" max="9999" name="" value="{{$item->quantity}}" pattern="[0-9]*" inputmode="numeric" aria-labelledby="">
                                        </div>
                                    </td>

                                    <td class="product-subtotal" data-title="Tổng">
                                        <span class="amount" id="sum_price_{{$item->id}}">{{number_format($item->getPriceSum())}}</span>
                                    </td>
                                    <td class="product-remove" style="cursor: pointer;">
                                        <a data-id="{{$item->id}}"  class="removeProductCart">{{ trans('menu.xoa') }}</a>
                                    </td>
                                </tr>
                                @php
                                $i++;
                                @endphp
                                @endforeach

                            </tbody>
                        </table>
                    </form>
                    <div class="cart-collaterals">
                        <div class="cart_totals gia-tri ">
                            <table cellspacing="0" class="table table-hover">
                                <tbody>
                                    <tr class="cart-subtotal">
                                        <th>{{ trans('menu.tamtinh') }}</th>
                                        <td data-title="Tạm tính"><span class="woocommerce-Price-amount amount sum_cart">{{number_format(Cart::getTotal())}}<span class="woocommerce-Price-currencySymbol"></span></span></td>
                                    </tr>
                                    <tr class="order-total">
                                        <th>{{ trans('menu.tongtienhang') }}</th>
                                        <td data-title="Tổng"><strong><span class="woocommerce-Price-amount amount sum_cart">{{number_format(Cart::getTotal())}}<span class="woocommerce-Price-currencySymbol"></span></span></strong> </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="wc-proceed-to-checkout">

                                <a href="{{route('thanhtoan')}}" class="checkout-button button alt wc-forward">
                                {{ trans('menu.thtt') }}</a>
                            </div>


                        </div>
                    </div>
                </div>
            </div>

        </main>
    </div>
</div>
