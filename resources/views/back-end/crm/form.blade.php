@if(!isset($obj) && $type == 1)
<form class="form-inline form-horizontal" action="{{route('benh-an.store')}}"
method="POST">
@csrf
<div class="col-md-12">
	<div class="panel-group" id="accordion">
		@include('back-end.crm.part1')
		@include('back-end.crm.part2')
		@include('back-end.crm.part3')
	</div>
	<div class="bt-submit">
		<input type="hidden" value="" name="" id="">
		<button type="submit" class="button-admin" id="them-moi">Thêm mới</button>
		<button type="reset" class="button-admin" id="reset">Làm mới</button>
	</div>
</div>
</form>
@elseif(isset($obj) && $type == 1)
<form class="form-inline form-horizontal" action="{{route('benh-an.update',['id'=>$obj->id])}}"
	method="POST">
	@method('PATCH')
	@csrf
	<div class="col-md-12">
		<div class="panel-group" id="accordion">
			@include('back-end.crm.part1')
			@include('back-end.crm.part2')
			@include('back-end.crm.part3')
		</div>
		<div class="bt-submit">
            <a href="{{ route('benh-an.add') }}"><button type="button" class="button-admin" id="cap-nhat">Thêm mới</button></a>
			<button type="submit" class="button-admin" id="cap-nhat">Cập nhật</button>
			<button type="reset" class="button-admin" id="huy-cap-nhat">Hủy cập nhật</button>
			<button type="button" onclick="window.location.href='{{route('download.benhan',['id'=>$obj->id])}}';" class="button-admin">In hóa đơn</button>
		</div>
	</div>
</form>
@endif
