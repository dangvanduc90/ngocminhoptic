@if($obj != null)
    <div class="col-md-7 list-images">
        <div class="zoom_img">
            <div class="slider-san-pham">
                @php
                    if(!isset($images)) $images = $obj->images()->orderby('is_default','desc')->get();
                @endphp
                <ul class="image-slider ">
                    @foreach($images as $key => $image)
                        <li class='zoom ex1' data-thumb="{{$image->product_image}}"
                            data-src="{{$image->product_image}}">
                            <img src="{{$image->product_image}}" alt="">
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
@endif
