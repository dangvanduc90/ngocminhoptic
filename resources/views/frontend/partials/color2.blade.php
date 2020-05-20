@if($obj != null)
<div class="type-product">
    @php
        $images = $obj->images()->orderby('is_default','desc')->get();
    @endphp
    <div class="images-summary">
        <ul class="product-galleryr">
            @foreach($images as $key => $image)
            <li class='zoom ex1' data-thumb="{{$image->product_image}}" data-src="{{$image->product_image}}">
                <img src="{{$image->product_image}}" alt="">
            </li>
            @endforeach
        </ul>
    </div>
</div>
@endif

