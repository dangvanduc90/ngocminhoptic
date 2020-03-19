@if($obj != null)
<div class="type-product">
    @php
        if(!isset($color)) $color = $obj->colors()->orderby('is_default','desc')->first();
    @endphp
    <input type="hidden" id="color_product" value="{{$color->id}}">
    <div class="images-summary">
        <ul class="product-galleryr">
            @foreach($color->list_image as $key=>$value)
            <li class='zoom ex1' data-thumb="{{$color->urlThumb($value)}}" data-src="{{$color->urlImg($value)}}">
                <img src="{{$color->urlImg($value)}}" alt="">
            </li>
            @endforeach
        </ul>
    </div>
</div>
@endif

