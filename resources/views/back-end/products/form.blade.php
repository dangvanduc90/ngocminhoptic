<div class="main-post col-md-8">
	<div class="form-group lb-slug {{ $errors->has('sku') ? 'has-error' : '' }}">
		<label class="control-label">Mã sản phẩm(*)</label>
		<div class="inner">
			<input type="text" class="form-control" name="sku" id="sku" value="{{isset($obj) ? $obj->sku : old('sku')}}" required>
		</div>
	</div>
	<div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
		<label class="control-label">Tên sản phẩm(*)</label>
		<div class="inner">
			<input type="text" class="form-control" name="name" id="name"
			value="{{isset($obj) ? $obj->name : old('name')}}" placeholder="Nhập tên sản phẩm" required>
			<input type="hidden" name="_id" id="_id" value="{{isset($obj) ? $obj->id : ''}}">
		</div>
	</div>
	<div class="form-group {{ $errors->has('name_en') ? 'has-error' : '' }}">
		<label class="control-label">Tên sản phẩm (EN)(*)</label>
		<div class="inner">
			<input type="text" class="form-control" name="name_en" id="name_en"
			value="{{isset($obj) ? $obj->name_en : old('name_en')}}" placeholder="Nhập tên sản phẩm" required>
		</div>
	</div>
	<div class="form-group lb-slug {{ $errors->has('slug') ? 'has-error' : '' }}">
		<label class="control-label">Đường dẫn tĩnh(*)</label>
		<div class="inner">
			<input type="text" class="form-control" name="slug" id="slug" value="{{isset($obj) ? $obj->slug : old('slug')}}" required>
		</div>
	</div>

    <div class="form-group">
        <label class="control-label">Ảnh sản phẩm</label>
        <div class="alert" id="message" style="display: none"></div>
        <table class="table" id="images-product-table">
            <tbody>
                @if(isset($obj))
                    @foreach($obj->images as $image)
                        <tr>
                            <td><input type="file" name="select_file" class="select_file" accept="image/*" /></td>
                            <td>
                                <button type="button" class="btn btn-primary btn-upload">Upload</button>
                            </td>
                            <td>
                            <span class="uploaded_image">
                                <img src="{{ $image->product_image }}" class="img-thumbnail" />
                                <input type="hidden" value="{{ $image->product_image }}" name="product_image[]">
                                <input type="hidden" value="{{ $image->title }}" name="title[]">
                                <input type="hidden" value="{{ $image->alt }}" name="alt[]">
                            </span>
                            </td>
                            <td>
                                <label>Ảnh đại diện
                                    <input type="radio" class="is_default" @if($image->is_default == 1) checked @endif name="rdo_is_default" >
                                    <input type="hidden" name="is_default[]" value="{{ intval($image->is_default) }}">
                                </label>
                            </td>
                            <td class="text-right"><button type="button" class="btn btn-danger btn-delete-img">Xóa ảnh</button></td>
                        </tr>
                    @endforeach
                @endif
                <tr>
                    <td><input type="file" name="select_file" class="select_file" accept="image/*" /></td>
                    <td>
                        <button type="button" class="btn btn-primary btn-upload">Upload</button>
                    </td>
                    <td>
                        <div class="uploaded_image"></div>
                    </td>
                    <td>
                        <label>Ảnh đại diện
                            <input type="radio" class="is_default" name="rdo_is_default" @unless(isset($obj)) checked @endif />
                            <input type="hidden" name="is_default[]" value="1" />
                        </label>
                    </td>
                    <td class="text-right"><button type="button" class="btn btn-danger btn-delete-img">Xóa ảnh</button></td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="5">
                        <button type="button" class="btn btn-primary" id="btn-new-img">Thêm ảnh mới</button>
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>

	<div class="box box-primary">
		<div class="form-group {{ $errors->has('description') ? 'has-error' : '' }}">
			<label class="control-label">Mô tả ngắn</label>
			<div>
				<textarea rows="5" placeholder="" class="form-control my-editor" name="description">{{isset($obj) ? $obj->description : ''}}</textarea>
			</div>
		</div>
		<div class="form-group {{ $errors->has('description_en') ? 'has-error' : '' }}">
			<label class="control-label">Mô tả ngắn (EN)</label>
			<div>
				<textarea rows="5" placeholder="" class="form-control my-editor" name="description_en">{{isset($obj) ? $obj->description_en : ''}}</textarea>
			</div>
		</div>
		<div class="form-group {{ $errors->has('content') ? 'has-error' : '' }}">
			<label class="control-label">Thông tin chi tiết(*)</label>
			<div>
				<textarea rows="5" placeholder="" class="form-control my-editor" name="content" required>{{isset($obj) ? $obj->content : ''}}</textarea>
			</div>
		</div>
		<div class="form-group {{ $errors->has('content_en') ? 'has-error' : '' }}">
			<label class="control-label">Thông tin chi tiết (EN)(*)</label>
			<div>
				<textarea rows="5" placeholder="" class="form-control my-editor" name="content_en" required>{{isset($obj) ? $obj->content_en : ''}}</textarea>
			</div>
		</div>
		<div class="form-group {{ $errors->has('note') ? 'has-error' : '' }}">
			<label class="control-label">Thông tin khác(*)</label>
			<div class="noi-dung">
				<textarea name="note" id="note" class="form-control my-editor" rows="40" required>{{isset($obj) ? $obj->note : old('note')}}</textarea>
			</div>
		</div>
        <div class="form-group {{ $errors->has('note_en') ? 'has-error' : '' }}">
			<label class="control-label">Thông tin khác (EN)(*)</label>
			<div class="noi-dung">
				<textarea name="note_en" id="note_en" class="form-control my-editor" rows="40" required>{{isset($obj) ? $obj->note_en : old('note_en')}}</textarea>
			</div>
		</div>
	</div>

</div>
<div class="main-post col-md-4">
	<div class="form-group lb-slug {{ $errors->has('type_id') ? 'has-error' : '' }}">
		<label class="control-label">Loại sản phẩm (*)</label>
		<div class="inner">
			<select class="form-control" name="type_id" required>
				<option label=""></option>
				@foreach($types as $type)
				<option value="{{$type->id}}" {{isset($obj) ? ($obj->type_id == $type->id ? 'selected' : '') :  (old('type_id') == $type->id ? 'selected' : '')}}>
					{{$type->name}}
				</option>
				@endforeach
			</select>
		</div>
	</div>
	<div class="form-group lb-slug {{ $errors->has('price') ? 'has-error' : '' }}">
		<label class="control-label">Giá (*)</label>
		<div class="inner">
			<input type="number" class="form-control" name="price" id="price" value="{{isset($obj) ? $obj->price : old('price')}}" required>
		</div>
	</div>
	<div class="form-group lb-slug">
		<label class="control-label">Chất liệu</label>
		<div class="inner">
			<input type="text" class="form-control" name="chatlieu" id="chatlieu" value="{{isset($obj) ? $obj->chatlieu : old('chatlieu')}}">
		</div>
	</div>
	<div class="form-group lb-slug">
		<label class="control-label">Chất liệu (EN)</label>
		<div class="inner">
			<input type="text" class="form-control" name="chatlieu_en" id="chatlieu_en" value="{{isset($obj) ? $obj->chatlieu_en : old('chatlieu_en')}}">
		</div>
	</div>
	<div class="form-group">
	    <label class="control-label">Hiển thị trang chủ</label>
	    <div class="inner">
	        <select class="form-control m-b" name="is_display" id="is_display" required>
	            <option value="1" {{isset($obj) ? ($obj->is_display == 1 ? 'selected' : '') :
	                (old('is_display') == 1 ? 'selected' : '')}}>
	                Có
	            </option>
	            <option value="0" {{isset($obj) ? ($obj->is_display == 0 ? 'selected' : '') :
	                (old('is_display') == 0 ? 'selected' : '')}}>
	                Không
	            </option>
	        </select>
	    </div>
	</div>
	<div class="form-group">
	    <label class="control-label">Trạng thái(*)</label>
	    <div class="inner">
	        <select class="form-control m-b" name="status" id="status" required>
	            <option value="1" {{isset($obj) ? ($obj->status == 1 ? 'selected' : '') :
	                (old('status') == 1 ? 'selected' : '')}}>
	                Sử dụng
	            </option>
	            <option value="0" {{isset($obj) ? ($obj->status == 0 ? 'selected' : '') :
	                (old('status') == 0 ? 'selected' : '')}}>
	                Tạm ngưng sử dụng
	            </option>
	        </select>
	    </div>
	</div>

    <div class="box box-primary">
		@include('back-end.partials.seo')
	</div>
</div>


