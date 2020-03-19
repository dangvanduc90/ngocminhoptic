@foreach($products as $product)
@if($product->colors()->count() > 0)
<div class="col-md-3 col-sm-6 col-xs-6 product-list-wrapper">
    <div class="view-product" style="border:1px solid #f9f9f9;">
        <div class="product-item-images">
            @php
            $i = 1;
            @endphp
            @foreach($product->colors()->orderby('is_default','desc')->get() as $_color)
            @if($i==1)
            <div class="thumbnail-wrapper">
                <a href="{{route('product.detail',['slug'=>$product->slug])}}" class="product-item-root" title="{{getName($product)}}" ><img src="{{$_color->image_product}}" alt="{{getName($_color)}}"></a>
            </div>
            @else
            <div class="thumbnail-wrapper-hover">
                <a href="{{route('product.detail',['slug'=>$product->slug])}}" class="product-item-root" title="{{getName($product)}}" ><img src="{{$_color->image_product}}" alt="{{getName($_color)}}"></a>
            </div>
            @endif
            @php
            if($i==2) break;
            $i++;
            @endphp
            @endforeach
            <button type="button" class="quick-view-button" data-id="{{$product->id}}">{{ trans('menu.xemnhanh') }}</button>
        </div>
        <div class="product-item-product">
            <a href="{{route('product.detail',['slug'=>$product->slug])}}" class="product-item-root" title="{{getName($product)}}"  title="{{getName($product)}}">
                <h3 class="product-item-name">{{getName($product)}}</h3>
            </a>
            <hr class="line-between">
            <div class="product-item-price">
                <span class="prix">Prix</span>
                <span class="item-price">{{number_format($product->price)}} VNĐ</span>
            </div>
        </div>
    </div>
</div>
@endif
@endforeach