@if(isset($obj))
<input type="hidden" name="_id" value="{{$obj->id}}">
@endif
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
<div class="form-group">
    <label class="col-sm-2 control-label">Mã màu</label>
    <div class="col-sm-4">
        <input type="color" class="form-control" name="code_color" id="code_color" value="{{isset($obj) ? $obj->code_color : ''}}" placeholder="">
    </div>
</div>
