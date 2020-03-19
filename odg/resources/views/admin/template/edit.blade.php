@extends('admin.layouts.default')

@section('title')
Sửa đổi: Mẫu giấy/email
@parent
@stop

@section('css')
<link href="{{asset('backend/pages/assets/lib/fancybox/jquery.fancybox.min.css')}}" rel="stylesheet">
@stop

@section('content')
<!-- HEADER POST -->
<div class="card mb-3">
  <div class="card-body">
    <div class="row">
      <div class="col-lg-8">
        <h3 class="mb-0">Sửa đổi: Mẫu giấy/email</h3>
      </div>
    </div>
  </div>
</div>

<!-- MESSAGE PAGE -->
@include('admin.partials.error-list')
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

<!-- FORM -->
<div class="card mb-3">
    <div class="card-header">
        <form action="{{$url_list}}">
            <button class="btn btn-primary mr-1 mb-1" type="submit">
                <span data-fa-transform="shrink-3"></span>Danh sách
            </button>
        </form>     
    </div>
    <div class="card-body bg-light">
        <div class="row">
            <div class="col-8">
                <form id="form" class="form-horizontal" role="form" method="post" action="{{route('template.update',['id'=>$template->id])}}">
                @method('PATCH')
                @csrf
                    <div class="form-group">
                        <label class="control-label" for="name">Tên mẫu giấy báo</label>
                        <input value="{{isset($template) ? $template->name : old('name')}}" class="form-control " name="name" id="name" type="text" required>
                    </div>
                    <div class="form-group">
                        <label for="type">Loại mẫu giấy/email</label>
                        <select class="form-control" id="type" name="type" required>
                            <option value="1" {{isset($template) ? ($template->type == 1 ? 'selected' : ''):(old('type') == 1 ? 'selected' : '')}} >Giấy nhập học</option>
                            <option value="2" {{isset($template) ? ($template->type == 2 ? 'selected' : ''):(old('type') == 2 ? 'selected' : '')}}>Giấy hoàn thiện</option>
                            <option value="3" {{isset($template) ? ($template->type == 3 ? 'selected' : ''):(old('type') == 2 ? 'selected' : '')}}>Đơn xin xét tuyển</option>
                            <option value="4" {{isset($template) ? ($template->type == 4 ? 'selected' : ''):(old('type') == 3 ? 'selected' : '')}}>Email</option>
                            <option value="5" {{isset($template) ? ($template->type == 5 ? 'selected' : ''):(old('type') == 2 ? 'selected' : '')}}>Phiếu đăng kí</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="type">Mẫu template</label>
                        <select class="form-control" id="temp" name="temp" required>
                            @foreach($files as $key=>$value)
                            <option data-image="{{config('dainam.un_public').'source/uploads/templates/Images/'.$value.'.png'}}"
                             value="{{$value}}"
                             {{isset($template) ? ($template->temp == $value ? 'selected' : ''):(old('temp') == $value ? 'selected' : '')}} >Mẫu {{$value}}</option>
                            @endforeach
                         </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="ngaybatdau">Thời gian</label>
                        <input value="{{isset($template) ? $template->time : old('time')}}" class="form-control" name="time" id="time" type="text">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="ngaybatdau">Ngày bắt đầu</label>
                        <input value="{{isset($template) ? $template->ngaybatdau : old('ngaybatdau')}}" class="form-control datetimepicker" name="ngaybatdau" id="schedule-start-date" type="text" data-options='{"dateFormat":"d/m/Y","enableTime":false}'>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="ngayketthuc">Ngày kết thúc</label>
                        <input value="{{isset($template) ? $template->ngayketthuc : old('ngayketthuc')}}" class="form-control datetimepicker" name="ngayketthuc" id="ngayketthuc" type="text" data-options='{"dateFormat":"d/m/Y","enableTime":false}'>
                    </div>
                    <div class="form-group">
                        <label for="status">Trạng thái</label>
                        <select class="form-control" id="status" name="status" required>
                            <option value="1" {{isset($template) ? ($template->status == 1 ? 'selected' : ''):(old('status') == 1 ? 'selected' : '')}}>Sử dụng</option>
                            <option value="0" {{isset($template) ? ($template->status == 0 ? 'selected' : ''):(old('status') == 0 ? 'selected' : '')}}>Không sử dụng</option>
                         </select>
                    </div>
                    <div class="form-group">
                    <button class="btn btn-primary mb-3" type="submit">Cập nhật</button>
                    <button class="btn btn-warning mb-3" type="reset">Reset</button>
                    </div>
                </form>
            </div>
        </div> 
    </div>
</div>
<!-- END FORM -->
@include('admin.partials.modal-preview')
@stop

@section('js')
<script src="{{asset('backend/pages/assets/lib/fancybox/jquery.fancybox.min.js')}}"></script>
<script type="text/javascript">
    $('#temp').on('change', function(){
        $temp_id =  $('#temp').val();
        data_image = $( "#temp option:selected").data('image');
        $('#previewModal').find('#modal-body-preview').attr('href', data_image)
        $('#previewModal').find('#modal-body-preview').attr('data-caption', 'Mẫu số '+$temp_id);
        $('#previewModal').find('#image-mini-preview').attr('src', data_image)
        $('#previewModal').modal('show');
    });
</script>
@stop