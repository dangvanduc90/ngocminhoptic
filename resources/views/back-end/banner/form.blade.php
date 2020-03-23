@if(isset($obj))
<input type="hidden" name="_id" value="{{$obj->id}}">
@endif
<div class="form-group">
    <label class="col-sm-2 control-label">Tiêu đề</label>
    <div class="col-sm-8">
        <input type="text" class="form-control" name="title" id="title" value="{{isset($obj) ? $obj->title : ''}}" placeholder="">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label">Loại dữ liệu</label>
    <div class="col-sm-8">
        <select class="form-control m-b" name="type" id="type" required>
            <option value="1" {{isset($obj) ? ($obj->type == 1 ? 'selected' : '') :
                (old('type') == 1 ? 'selected' : '')}}>
                Banner
            </option>
            <option value="2" {{isset($obj) ? ($obj->type == 2 ? 'selected' : '') :
                (old('type') == 2 ? 'selected' : '')}}>
                Thương hiệu
            </option>
            <option value="3" {{isset($obj) ? ($obj->type == 3 ? 'selected' : '') :
                (old('type') == 3 ? 'selected' : '')}}>
                Menu header
            </option>
            <option value="4" {{isset($obj) ? ($obj->type == 4 ? 'selected' : '') :
                (old('type') == 4 ? 'selected' : '')}}>
                Chi nhánh
            </option>
            <option value="5" {{isset($obj) ? ($obj->type == 5 ? 'selected' : '') :
                (old('type') == 5 ? 'selected' : '')}}>
                Footer
            </option>
        </select>
    </div>
</div>
<div class="form-group {{ $errors->has('image') ? 'has-error' : '' }}">
    <label class="col-sm-2 control-label">Ảnh</label>
    <div class="col-sm-8">
        <div class="input-group">
            <span class="input-group-btn">
                <a href="{{env('URL_FILEMANAGE_0', '')}}"
                class="btn btn-primary red iframe-btn" id="iframe-btn-0"><i
                class="fa fa-picture-o"></i>Chọn</a>
            </span>
            @if(isset($obj))
            <input id="thumb_0" class="form-control" type="text" name="image" value="{{$obj->image}}">
            @else
            <input id="thumb_0" class="form-control" type="text" name="image">
            @endif
        </div>

        <div id="preview_0">
            @if(isset($obj))
            <img src="{{$obj->image}}" style="max-width: 250px;">
            @else
            @endif
        </div>
    </div>
</div>
<div class="form-group {{ $errors->has('link') ? 'has-error' : '' }}">
    <label class="col-sm-2 control-label">Link</label>
    <div class="col-sm-8">
        <input type="text" class="form-control" name="link" id="link"
        value="{{isset($obj) ? $obj->link : old('link')}}">
    </div>
</div>
<div class="form-group {{ $errors->has('code') ? 'has-error' : '' }}">
    <label class="col-sm-2 control-label">Code</label>
    <div class="col-sm-8">
        <textarea rows="5" placeholder="" class="form-control" name="code">{{isset($obj) ? $obj->code : ''}}</textarea>
    </div>
</div>
<div class="form-group {{ $errors->has('content') ? 'has-error' : '' }}">
    <label class="col-sm-2 control-label">Nội dung</label>
    <div class="col-sm-8">
        <textarea rows="5" placeholder="" class="form-control" name="content">{{isset($obj) ? $obj->content : ''}}</textarea>
    </div>
</div>
<div class="form-group {{ $errors->has('content_en') ? 'has-error' : '' }}">
    <label class="col-sm-2 control-label">Nội dung (EN)</label>
    <div class="col-sm-8">
        <textarea rows="5" placeholder="" class="form-control" name="content_en">{{isset($obj) ? $obj->content_en : ''}}</textarea>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label">Page</label>
    <div class="col-sm-8">
        <select data-placeholder="Chọn trang hiển thị" name=page[]
        class="form-control chosen-select" multiple tabindex="4">
            @foreach($pages as $page)
                <option value="{{$page->id}}"
                    {{isset($obj) ? (in_array($page->id, $obj->array_page) ? 'selected' : '') : ''}}>
                    {{$page->name}}
                </option>
            @endforeach
        </select>
    </div>
</div>
