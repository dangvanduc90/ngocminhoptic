@if(isset($obj))
<input type="hidden" name="_id" value="{{$obj->id}}">
@endif
<div class="form-group">
    <label class="col-sm-2 control-label">Tên sản phẩm(*)</label>
    <div class="col-sm-4">
        <input type="text" class="form-control" name="name" id="name" value="{{isset($obj) ? $obj->name : ''}}" placeholder="" required>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label">Giá sản phẩm(*)</label>
    <div class="col-sm-4">
        <input type="number" class="form-control" name="price" id="price" value="{{isset($obj) ? $obj->price : '0'}}" placeholder="" required>
    </div>
</div>
