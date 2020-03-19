@if($product != null)
<div class="col-md-7 list-images">
    <div class="zoom_img">
        <div class="slider-san-pham">
            @php
            if(!isset($color)) $color = $product->colors()->orderby('is_default','desc')->first();
            @endphp
            <input type="hidden" id="color_product" value="{{$color->id}}">
            <ul class="image-slider ">
                @foreach($color->list_image as $key=>$value)
                <li class='zoom ex1' data-thumb="{{$color->urlThumb($value)}}" data-src="{{$color->urlImg($value)}}">
                    <img src="{{$color->urlImg($value)}}" alt="">
                </li>
                @endforeach
            </ul>
        </div>
    </div>
</div>
@endif