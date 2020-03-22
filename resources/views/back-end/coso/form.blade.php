<div class="main-post col-md-8">
	<div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
		<label class="control-label">Tiêu đề(*)</label>
		<div class="inner">
			<input type="text" class="form-control" name="name" id="name"
			value="{{isset($obj) ? $obj->name : old('name')}}" placeholder="Nhập tiêu đề" required>
			<input type="hidden" name="_id" id="_id" value="{{isset($obj) ? $obj->id : ''}}">
		</div>
	</div>
	<div class="form-group lb-address {{ $errors->has('address') ? 'has-error' : '' }}">
		<label class="control-label">Địa chỉ(*)</label>
		<div class="inner">
			<input type="text" class="form-control" name="address" id="address" value="{{isset($obj) ? $obj->address : old('address')}}" required>
		</div>
	</div>
</div>
