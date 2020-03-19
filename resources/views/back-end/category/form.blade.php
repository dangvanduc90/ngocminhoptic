@if(isset($obj))
<input type="hidden" name="_id" value="{{$obj->id}}">
@endif
<div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
	<label class="col-sm-2 control-label">Tên chuyên mục (*) </label>
	<div class="col-sm-4">
		<input type="text" class="form-control" name="name" id="name" value="{{isset($obj) ? $obj->name : ''}}" placeholder="Trang chủ" required>
	</div>
</div>
<div class="form-group {{ $errors->has('slug') ? 'has-error' : '' }}">
	<label class="col-sm-2 control-label">Đường dẫn (*)</label>
	<div class="col-sm-4">
		<input type="text" class="form-control" name="slug" id="slug" value="{{isset($obj) ? $obj->slug : ''}}" placeholder="trang-chu">
	</div>
</div>

<div class="form-group">
	<label class="col-sm-2 control-label">Chuyên mục cha</label>
	<div class="col-sm-4">
		@if(!isset($obj))
		<select class="form-control m-b" name="cat_id" id="cat_id">
			<option label=""></option>
			@foreach($cats as $p)
			<option value="{{$p->id}}" {{old('cat_id') == $p->id ? "selected" : ""}}>{{$p->name}}</option>
			@endforeach
		</select> 
		@else
		<select class="form-control m-b" name="cat_id" id="cat_id">
			<option label=""></option>
			@foreach($cats as $p)
			<option value="{{$p->id}}" {{$obj->cat_id == $p->id ? "selected" : ""}}>{{$p->name}}</option>
			@endforeach
		</select>
		@endif                                           
	</div>
</div>

<div class="form-group">
	<label class="col-sm-2 control-label">Loại danh mục</label>
	<div class="col-sm-4">
		@if(!isset($obj))
		<select class="form-control m-b" name="type" id="type">
			<option label=""></option>
			<option value="1" {{old('type') == 1 ? "selected" : ""}}>Có danh mục con</option>
			<option value="2" {{old('type') == 2 ? "selected" : ""}}>Không có danh mục con</option>
		</select> 
		@else
		<select class="form-control m-b" name="type" id="type">
			<option label=""></option>
			<option value="1" {{$obj->type == 1 ? "selected" : ""}}>Có danh mục con</option>
			<option value="2" {{$obj->type == 2 ? "selected" : ""}}>Không có danh mục con</option>
		</select>
		@endif                                           
	</div>
</div>
