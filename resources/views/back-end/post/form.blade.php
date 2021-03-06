<div class="main-post col-md-8">
	<div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
		<label class="control-label">Tiêu đề bài viết(*)</label>
		<div class="inner">
			<input type="text" class="form-control" name="name" id="name"
			value="{{isset($obj) ? $obj->name : old('name')}}" placeholder="Nhập tiêu đề" required>
			<input type="hidden" name="_id" id="_id" value="{{isset($obj) ? $obj->id : ''}}">
		</div>
	</div>
	<div class="form-group lb-slug {{ $errors->has('slug') ? 'has-error' : '' }}">
		<label class="control-label">Đường dẫn tĩnh(*)</label>
		<div class="inner">
			<input type="text" class="form-control" name="slug" id="slug" value="{{isset($obj) ? $obj->slug : old('slug')}}" required>
		</div>
	</div>
	<div class="box box-primary">
		<div class="form-group {{ $errors->has('des_s') ? 'has-error' : '' }}">
			<label class="control-label">Miêu tả ngắn(*)</label>
			<div>
				<textarea rows="5" placeholder="" class="form-control" name="des_s" required>{{isset($obj) ? $obj->des_s : ''}}</textarea>
			</div>
		</div>
		<div class="form-group {{ $errors->has('des_s_en') ? 'has-error' : '' }}">
			<label class="control-label">Miêu tả ngắn (EN)(*)</label>
			<div>
				<textarea rows="5" placeholder="" class="form-control" name="des_s_en" required>{{isset($obj) ? $obj->des_s_en : ''}}</textarea>
			</div>
		</div>
		<div class="form-group {{ $errors->has('content') ? 'has-error' : '' }}">
			<label class="control-label">Nội dung(*)</label>
			<div class="noi-dung">
				<textarea name="content" id="content" class="form-control my-editor" rows="40" required>
					{{isset($obj) ? $obj->content : old('content')}}
				</textarea>
			</div>
		</div>
		<div class="form-group {{ $errors->has('content_en') ? 'has-error' : '' }}">
			<label class="control-label">Nội dung (EN)(*)</label>
			<div class="noi-dung">
				<textarea name="content_en" id="required" class="form-control my-editor" rows="40" required>
					{{isset($obj) ? $obj->content_en : old('content_en')}}
				</textarea>
			</div>
		</div>
	</div>
	<div class="box box-primary">
		@include('back-end.partials.seo')
	</div>
</div>
<div class="sidebar-post col-md-4">
	<div class="box box-primary">
		<div class="box-body box-profile">
			<div class="form-group {{ $errors->has('image') ? 'has-error' : '' }}">
				<label class="control-label">Ảnh đại diện(*)</label>
				<div class="thumb">
					<div class="input-group">
						<span class="input-group-btn">
							<a href="{{env('URL_FILEMANAGE_0', '')}}"
							class="btn btn-primary red iframe-btn" id="iframe-btn-0"><i
							class="fa fa-picture-o"></i>Chọn</a>
						</span>
						@if(isset($obj))
						<input id="thumb_0" class="form-control" type="text" name="image" value="{{$obj->image}}" required>
						@else
						<input id="thumb_0" class="form-control" type="text" name="image" required>
						@endif
					</div>

					<div id="preview_0">
						@if(isset($obj))
						<img src="{{$obj->image}}" style="max-width: 100%;">
						@else
						@endif
					</div>
				</div>
			</div>
		</div>
		<!-- /.box-body -->
	</div>
	<div class="form-group">
		<label class="control-label">Loại bài viết (*)</label>
		<div class="inner">
			@if(!isset($obj))
			<select class="form-control m-b" name="type">
				<option value="1" {{old('type') == "1" ? "selected" : ""}}>Tin tức</option>
				<option value="3" {{old('type') == "3" ? "selected" : ""}}>Khuyến mại</option>
				<option value="2" {{old('type') == "2" ? "selected" : ""}}>Trang</option>
			</select>
			@else
			<select class="form-control m-b" name="type">
				<option value="1" {{$obj->type == "1" ? "selected" : ""}}>Tin tức</option>
				<option value="3" {{$obj->type == "3" ? "selected" : ""}}>Khuyến mại</option>
				<option value="2" {{$obj->type == "2" ? "selected" : ""}}>Trang</option>
			</select>
			@endif
		</div>
	</div>
	<div class="form-group">
		<label class="control-label">Trạng thái (*)</label>
		<div class="inner">
			@if(!isset($obj))
			<select class="form-control m-b" name="status">
				<option value="1" {{old('status') == "1" ? "selected" : ""}}>Sử dụng</option>
				<option value="0" {{old('status') == "0" ? "selected" : ""}}>Chưa sử dụng</option>
			</select>
			@else
			<select class="form-control m-b" name="status">
				<option value="1" {{$obj->status == "1" ? "selected" : ""}}>Sử dụng</option>
				<option value="0" {{$obj->status == "0" ? "selected" : ""}}>Chưa sử dụng</option>
			</select>
			@endif
		</div>
	</div>
</div>

