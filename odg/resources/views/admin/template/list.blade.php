@extends('admin.partials.table')

@section('title')
Danh sách: Mẫu giấy/email
@parent
@stop

@section('css')
@stop

@section('content-table')
	@section('title-table')
	Danh sách: Mẫu giấy/email
	@stop

	<!-- MESSAGE PAGE -->
	@include('admin.partials.error-list')
	@section('message-status')
		@if(session('error-template'))
		    <div class="alert alert-danger">
		        <strong>{{session('error-template')}}</strong>
		    </div>
		@endif
		@if(session('success-template'))
		    <div class="alert alert-success">
		        <strong>{{session('success-template')}}</strong>
		    </div>
		@endif
	@stop

	@section('t-head')
	<th>Tên</th>	
	<th>Loại mẫu</th>
	<th>Mẫu</th>
	<th>Thời gian</th>
	<th>Ngày bắt đầu</th>
	<th>Ngày kết thúc</th>
	<th>Trạng thái</th>
	<th></th>
	@stop

	@section('t-body')
	@foreach($templates as $_template)
	<tr>
		<td>{{$_template->name}}</td>
		<td>
			@if($_template->type == 1)
			<span class="badge badge-pill badge-success">Giấy nhập học</span>
			@elseif($_template->type == 2)
			<span class="badge badge-pill badge-primary">Giấy hoàn thiện</span>
			@elseif($_template->type == 3)
			<span class="badge badge-pill badge-danger">Đơn xin xét tuyển</span>
			@elseif($_template->type == 4)
			<span class="badge badge-pill badge-danger">Email</span>
			@elseif($_template->type == 5)
			<span class="badge badge-pill badge-danger">Phiếu đăng kí</span>
			@endif			
		</td>
		<td>
			Mẫu {{$_template->temp}}	
		</td>
		<td>{{$_template->time}}</td>
		<td>{{$_template->ngaybatdau}}</td>
		<td>{{$_template->ngayketthuc}}</td>			
		<td>
			@if($_template->status == 1)
			<span class="badge badge-pill badge-success">Đang sử dụng</span>
			@else
			<span class="badge badge-pill badge-danger">Ngưng sử dụng</span>
			@endif
			
		</td>
		<td><div class="col-12">
				<form action="{{route('template.edit', ['id' => $_template->id])}}">
					<button class="btn btn-warning btn-sm" type="submit">
						Sửa
					<span class="far fa-edit ml-1" data-fa-transform="shrink-3"></span>
					</button>
					<button class="btn btn-danger btn-sm delete-button" 
					data-action ="{{ route('template.destroy',$_template->id) }}" type="button">
						Xóa
					<span class="fas fa-trash ml-1" data-fa-transform="shrink-3"></span>
					</button>	
				</form>					
			</div>
		</td>
	</tr>
	@endforeach
	@stop
@stop
			
@section('js')
@stop