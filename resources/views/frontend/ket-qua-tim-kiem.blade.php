@extends('frontend.layouts.deafault')

@section('title')
{{ trans('menu.tracuu') }}
@endsection

@section('content')
<div class="container">
	<div class="row">
		<div id="primary" class="content-area col-md-12">
			<main id="main" class="site-main">
				<div class="category-header search-text">
					<h1 class="entry-title">{{ trans('menu.tracuu') }}</h1>
				</div>
				<div class="contenr-search clearfix">
					<div class="row">
						<div class="moi-dung-form clearfix col-lg-3 col-md-4">
							<form role="form" class="form-filter clearfix" action="" method="POST">
								<h3>{{ trans('menu.nhapthongtintimkiem') }}</h3>
								<div class="form-group">
									<label class="control-label" for="S_ten">{{ trans('menu.hoten') }}</label>
									<div class="ho-ten forms-control">
										<span class="icon_checkout ico-name"></span>
										<input type="text" id="s_ten" value="" placeholder="">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label" for="s_mahd">{{ trans('menu.mahoadon') }}</label>
									<div class="ma-hoa-don forms-control">
										<span class="icon_checkout ico-mahoadon"></span>
										<input type="text" id="s_mahd" value="" placeholder="">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label" for="s_dt">{{ trans('menu.dienthoai') }}</label>
									<div class="hostline forms-control">
										<span class="icon_checkout ico-tel"></span>
										<input type="text" id="s_dt" value="" placeholder="">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label" for="s_ngaykham">{{ trans('menu.ngaykham') }}</label>
									<div class="ma-hoa-don forms-control input-contenr">
										<span class="icon_checkout ico-ngay-dat"></span>
                                        <span class="tooltiptexts">20/09/2019</span>
										<input type="text" id="s_ngaykham" autocomplete="off"
                                            class="datepicker" value="" placeholder="">
									</div>
								</div>
								<div class="bt-submit">
									<button type="button" id="search_benhan" class="tim-kiem">{{ trans('menu.search') }}</button>
									<input type="hidden" name="" value="">
								</div>
							</form>
						</div>
						<div class="ket-qua-tim-kiem col-lg-9 col-md-8">
							<div class="table-responsive">
								<table class="table table-sm mb-0 table-dashboard">
									<thead >
										<tr>
											<th>{{ trans('menu.stt') }}</th>
											<th>{{ trans('menu.hoten') }}</th>
											<th>{{ trans('menu.mahoadon') }}</th>
											<th>{{ trans('menu.ngaykham') }}</th>
											<th>{{ trans('menu.dienthoai') }}</th>
											<th>PD</th>
											<th>{{ trans('menu.xemthem') }}</th>
										</tr>
									</thead>
									<tbody id="tbody_benhan">
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>

	</div>
</div>
<div id="div_modal_view"></div>


{{-- <div class="modal fade" id="chon-cach-in" role="dialog">
	<div class="modal-dialog modal-sm modal-xs seting-modal">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Je suis un produit</h4>
			</div>
			<div class="modal-body clearfix">
				<div class="comment-d">
					<p>Chọn hình thức in</p>
				</div>
				<div class="button-contenr">
					<button type="submit" class="btn btn-default" name="">File PDF</button>
					<button type="submit" class="btn btn-default" name="">In</button>
				</div>
			</div>
		</div>
	</div>
</div> --}}
@endsection

@section('js')
    <link href="{{asset('backend/css/plugins/datapicker/datepicker3.css')}}" rel="stylesheet">
    <script src="{{asset('backend/js/plugins/datapicker/bootstrap-datepicker.js')}}"></script>
<script type="text/javascript">
	$('#search_benhan').click(function(){
		_ten = $('#s_ten').val();
		_mahd = $('#s_mahd').val();
		_dt = $('#s_dt').val();
		_ngaykham = $('#s_ngaykham').val();
		_url = "{{config('admin.base_url')}}ajax/search/benhan";
		$.get(_url, {ten: _ten, mahd: _mahd, dt: _dt, ngaykham: _ngaykham}, function(data){
			$('#tbody_benhan').html(data);
		});
	});
	$("#tbody_benhan").delegate(".view_benhan", "click", function(){
		_id = $(this).data('id');
		_url ="{{config('admin.base_url')}}ajax/info/benhan";
		$.get(_url, {id: _id}, function(data){
			$('#div_modal_view').html(data);
			$('#view-informations-client').modal('toggle');
		});
	});

    $('.datepicker').datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: true,
        autoclose: true,
        format: "dd/mm/yyyy"
    });
</script>
@endsection
