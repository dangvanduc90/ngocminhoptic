@extends('back-end.layouts.main')

@section('title')
Danh sách thông tin cơ sở
@parent
@stop

@section('css')
<link href="{{asset('backend/css/plugins/dataTables/datatables.min.css')}}" rel="stylesheet">
@stop

{{-- Page content --}}
@section('content')
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				{{-- Header table --}}
				<div class="ibox-title">
					<h5>Bảng danh sách</h5>
				</div>
				{{-- END Header table --}}
				<div class="ibox-content">
					@include('back-end.partials.alert-msg')
					<div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover dataTables-example">
                            <thead>
                            <tr>
                                <th class="no-sort check-all-table text-center"></th>
                                <th class="text-center">Tên</th>
                                <th class="text-center">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($data as $obj)
                                <tr>
                                    <td class="text-center">{{$obj->id}}</td>
                                    <td class="text-center">{{$obj->name}}</td>
                                    <td class="text-center">
                                        <a href="{{route('coso.edit', ['id'=>$obj->id])}}" class="btn btn-warning btn-circle"><i class="fa fa-edit"></i></a>
                                        <a 	class="btn btn-danger btn-circle btn-sm delete-button"
                                              data-action ="{{ route('coso.destroy',$obj->id) }}" type="button">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@include('back-end.partials.modals.delete')
{{-- END Main content --}}
@stop
@section('js')
<!-- iCheck -->
<script src="{{asset('backend/js/plugins/dataTables/datatables.min.js')}}"></script>
<script src="{{asset('js/delete-modal.js')}}"></script>
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
	});
</script>
@stop
