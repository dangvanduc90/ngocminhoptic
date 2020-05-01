@if(isset($obj) && $obj != null)
<div class="modal fade modet-list-conter active-modal " id="view_conter" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content clearfix">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <div class="thong-tin">
               <h4 class="modal-title">{{ trans('menu.thongtinsp') }}</h4>
           </div>
       </div>
       <div class="modal-body clearfix">
        <input type="hidden" name="product_id" id="product_id" value="{{$obj->id}}">
        <div class="row">
            <div class="thumbnails-outside clearfix">
                <div id="div_color">
                    @include('frontend.partials.color')
                </div>
                <div class="col-md-5 list-text">
                    <div class="columns">
                        <h3 class="product-name">{{getName($obj)}}</h3>
                        <p class="page-sku"> {{ trans('menu.masp') }} :  {{$obj->sku}}</p>
                        <p class="page-sku"> {{ trans('menu.chatlieu') }} :  {{getChatLieu($obj)}}</p>
                        <p class="product-price">
                            <span class="prix">Prix</span>
                            <span class="item-price">{{number_format($obj->price)}} VNĐ</span>
                        </p>
                        <div class="product-option-item">
                            <form action="" name="">
                                <div class="option-item">
                                    <label class="option-label">{{ trans('menu.mau') }}</label>
                                    <ul class="product-option-list">
                                        @foreach($colors as $key => $_color)
                                            <li>
                                                <div data-id ="{{$_color->id}}" data-type="1" class="color-label color-product @if($key == 0) active @endif" style="background-color: {{$_color->code_color}}">
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
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endif
