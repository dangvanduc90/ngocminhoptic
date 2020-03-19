@if(isset($obj))
<input type="hidden" name="_id" value="{{$obj->id}}">
@endif
<div class="form-group  {{ $errors->has('product_id') ? 'has-error' : '' }}">
    <label class="col-sm-2 control-label">Sản phẩm(*)</label>
    <div class="col-sm-4">
        <select name="product_id" class="form-control" required>
            <option label=""></option>
            @foreach($products as $product)
            <option value="{{$product->id}}" 
                {{isset($obj) ? 
                    (($obj->product_id == $product->id) ? 'selected' : '') 
                    : (old('product_id') == $product->id ? 'selected' : '')}}>
                {{$product->name}}
            </option>
            @endforeach
        </select>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label">Tên màu(*)</label>
    <div class="col-sm-4">
        <input type="text" class="form-control" name="name" id="name" value="{{isset($obj) ? $obj->name : ''}}" placeholder="" required>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label">Tên màu (EN)(*)</label>
    <div class="col-sm-4">
        <input type="text" class="form-control" name="name_en" id="name_en" value="{{isset($obj) ? $obj->name_en : ''}}" placeholder="" required>
    </div>
</div>
<div class="form-group {{ $errors->has('image_color') ? 'has-error' : '' }}">
    <label class="col-sm-2 control-label">Ảnh màu</label>
    <div class="col-sm-4">
        <div class="input-group">
            <span class="input-group-btn">
                <a href="{{env('URL_FILEMANAGE_0', '')}}"
                class="btn btn-primary red iframe-btn" id="iframe-btn-0"><i
                class="fa fa-picture-o"></i>Chọn</a>
            </span>
            @if(isset($obj))
            <input id="thumb_0" class="form-control" type="text" name="image_color" value="{{$obj->image_color}}">
            @else
            <input id="thumb_0" class="form-control" type="text" name="image_color">
            @endif
        </div>

        <div id="preview_0">
            @if(isset($obj))
            <img src="{{$obj->image_color}}" style="max-width: 250px;">       
            @else
            @endif
        </div>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label">Mã màu</label>
    <div class="col-sm-4">
        <input type="color" class="form-control" name="code_color" id="code_color" value="{{isset($obj) ? $obj->code_color : ''}}" placeholder="">
    </div>
</div>
<div class="form-group {{ $errors->has('image_product') ? 'has-error' : '' }}">
    <label class="col-sm-2 control-label">Ảnh đại diện sản phẩm (*)</label>
    <div class="col-sm-4">
        <div class="input-group">
            <span class="input-group-btn">
                <a href="{{env('URL_FILEMANAGE_1', '')}}"
                class="btn btn-primary red iframe-btn" id="iframe-btn-1"><i
                class="fa fa-picture-o"></i>Chọn</a>
            </span>
            @if(isset($obj))
            <input id="thumb_1" class="form-control" type="text" name="image_product" value="{{$obj->image_product}}" required>
            @else
            <input id="thumb_1" class="form-control" type="text" name="image_product" required>
            @endif
        </div>

        <div id="preview_1">
            @if(isset($obj))
            <img src="{{$obj->image_product}}" style="max-width: 250px;">       
            @else
            @endif
        </div>
    </div>
</div>
<div class="form-group  {{ $errors->has('is_default') ? 'has-error' : '' }}">
    <label class="col-sm-2 control-label">Màu mặc định</label>
    <div class="col-sm-4">
        <select name=is_default class="form-control" required>
             <option value="1"
                {{isset($obj) ?
                    (($obj->is_default == 1) ? 'selected' : '') 
                    : (old('is_default') == 1 ? 'selected' : '')}}>
                Đúng
            </option>
             <option value="0" 
                {{isset($obj) ? 
                    (($obj->is_default == 0) ? 'selected' : '') 
                    : (old('is_default') == 0 ? 'selected' : '')}}>
                Sai
            </option>
        </select>
    </div>
</div>


