@extends('back-end.layouts.main')

@section('title')
Thay đổi sản phẩm : #{{$obj->sku}}
@endsection

@section('css')
<link href="{{asset('backend/css/plugins/chosen/bootstrap-chosen.css')}}" rel="stylesheet">
@endsection

{{-- Page content --}}
@section('content')
<div class="wrapper wrapper-content">
	<div class="row animated fadeInRight">
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>Thông tin chi tiết</h5>
			</div>
			<div class="ibox-content">
				@include('back-end.partials.alert-msg')
				<form id="form" class="form-horizontal" role="form" action="{{route('product.update',['id'=>$obj->id])}}"
				enctype="multipart/form-data" method="POST">
				@method('PATCH')
				@csrf
					@include('back-end.products.form')
					<div class="form-group">
						<div class="col-sm-4 col-sm-offset-2">

							<button class="btn btn-white" >Làm mới</button>
							<button class="btn btn-primary" type="submit">Cập nhật</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
@endsection
@section('js')
    <script src="{{asset('js/slug.js')}}"></script>
    @include('back-end.products.js')
@endsection
