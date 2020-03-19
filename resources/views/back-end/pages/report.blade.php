@extends('back-end.layouts.main')

@section('title')
Trang thống kê
@endsection

@section('css')
<link href="{{asset('backend/css/plugins/dataTables/datatables.min.css')}}" rel="stylesheet">
@endsection


@section('content')
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Tìm kiếm</h5>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							<i class="fa fa-wrench"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content">
					<form role="form" class="form-inline" action="{{route('report.post')}}" method="POST">
						@csrf
						<div class="form-group" style="">
							<label for="exampleInputEmail2" class="sr-only">Từ ngày</label>
							<input type="text" placeholder="Từ ngày" id="start_date" name="start_date" value="{{$start_date}}" autocomplete="off" 
							class="form-control">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword2" class="sr-only">Đến ngày</label>
							<input type="text" placeholder="Đến ngày" id="end_date" name="end_date" value="{{$end_date}}" autocomplete="off" 
							class="form-control">
						</div>
						<button class="btn btn-success" type="submit" style="margin-bottom:0;">Tìm kiếm</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				{{-- Header table --}}
				<div class="ibox-title">
					<h5>Doanh thu bán hàng</h5>
				</div>
				{{-- END Header table --}}
				<div class="ibox-content">
					<div class="table-responsive">
						@include('back-end.report.table1')
					</div>
				</div>
			</div>
		</div>

		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				{{-- Header table --}}
				<div class="ibox-title">
					<h5>Doanh thu khám bệnh</h5>
				</div>
				{{-- END Header table --}}
				<div class="ibox-content">
					<div class="table-responsive">
						@include('back-end.report.table2')
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@stop

@section('js')
<script src="{{asset('backend/js/plugins/dataTables/datatables.min.js')}}"></script>
<script>
	$(document).ready(function(){
		$('.dataTables-example').DataTable({
			pageLength: 10,
			responsive: true,
			dom: '<"html5buttons"B>lTfgitp',
			buttons: [
			{extend: 'excel', title: 'ExampleFile'},			
			]
		});
		$('#start_date').datepicker({
			todayBtn: "linked",
			keyboardNavigation: false,
			forceParse: false,
			calendarWeeks: true,
			autoclose: true,
			format: "dd/mm/yyyy"
		});
		$('#end_date').datepicker({
			todayBtn: "linked",
			keyboardNavigation: false,
			forceParse: false,
			calendarWeeks: true,
			autoclose: true,
			format: "dd/mm/yyyy"
		});
	});
</script>
@endsection