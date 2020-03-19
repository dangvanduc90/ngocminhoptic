<!DOCTYPE html>
<html lang="en">
@include('back-end.crm.head')
<body class="body-admin">
	<div class="container-fluid">
		<div class="row">
			<div class="content-admin">
				<div class="col-md-12 ngoc-minh-admin">
					<div class="title-admin">
						<a href="{{route('admin.home')}}">
							<img src="{{asset('images/logo-images.png')}}" alt="Trang chủ">
						</a>
						<h1></h1>
						<button class="niplogin">
							<div class="avatarimage">
								<span class="icons-avatar"><i class="fa fa-user-circle" aria-hidden="true"></i></span>
								<span class="text">{{auth()->guard('admin')->user()->username}}</span>
							</div>
						</button>
					</div>
				</div>
				<div class="col-md-12 ngoc-minh-tb">
				</div>
				@if(session('success-crm'))
				<div class="alert alert-success">
					<strong>{{session('success-crm')}}</strong>
				</div>
				@endif
				<div class="noi-dung-form-td clear clearfix" id="content_form_crm">
					@include('back-end.crm.form')
				</div>
				<div id="content_table_crm">
					@include('back-end.crm.table')
				</div>
				
		</div>
	</div>
</div>	
</body>
@include('back-end.crm.js')
</html>