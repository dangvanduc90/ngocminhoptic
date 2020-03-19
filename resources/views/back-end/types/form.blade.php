<div class="main-post col-md-8">
	<div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
		<label class="control-label">Tiêu đề tiếng viết(*)</label>
		<div class="inner">
			<input type="text" class="form-control" name="name" id="name" 
			value="{{isset($obj) ? $obj->name : old('name')}}" placeholder="Nhập tên sản phẩm" required>
			<input type="hidden" name="_id" id="_id" value="{{isset($obj) ? $obj->id : ''}}">
		</div>
	</div>
	<div class="form-group lb-slug {{ $errors->has('slug') ? 'has-error' : '' }}">
		<label class="control-label">Đường dẫn tĩnh(*)</label>
		<div class="inner">
			<input type="text" class="form-control" name="slug" id="slug" value="{{isset($obj) ? $obj->slug : old('slug')}}" required>
		</div>
	</div>

	<div class="form-group lb-slug {{ $errors->has('name_en') ? 'has-error' : '' }}">
		<label class="control-label">Tiêu đề tiếng anh(*)</label>
		<div class="inner">
			<input type="text" class="form-control" name="name_en" id="name_en" value="{{isset($obj) ? $obj->name_en : old('name_en')}}" required>
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


