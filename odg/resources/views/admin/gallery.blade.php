@extends('admin.layouts.default')

@section('title')
Trình quản lý file hệ thống
@parent
@stop

@section('css')

@stop

@section('content')
<!-- HEADER POST -->
<div class="card mb-3">
  <div class="card-body">
    <div class="row">
      <div class="col-lg-8">
        <h3 class="mb-0">Trình quản lý file hệ thống</h3>
      </div>
    </div>
  </div>
</div>
<div class="wrapper wrapper-content">
	<iframe src="{{url('./filemanager/dialog.php?type=0&field_id=thumb_0')}}" style="width: 100%; height: 800px; overflow: hidden; border: none;"></iframe>
</div>
@stop
