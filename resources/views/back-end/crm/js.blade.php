<script>
	function autoGetPrice(id){
		_selected = $( "#sanpham_"+id+" option:selected" );
		_price = _selected.data('price');
		_sl = $('#soluong_'+id).val();
		if(_sl == ''){
			_sl = 0;
			$('#soluong_'+id).val(_sl);
		}
		_sum = _price*_sl;
		$('#thanhtien_'+id).val(_sum);
		$('#gia_'+id).val(_price);

	}

	function searchBenhAn(){
		_str = $('#s_str').val();
		_from_date = $('#s_fromDate').val();
		_end_date = $('#s_endDate').val();
		_url = _url = "{{config('admin.base_url')}}admin/ajax/searchBenhAn";
		$.get(_url, {str: _str, from_date: _from_date, end_date: _end_date}, function(data){
			$("#tbody_benhan").html(data);
		});
	}

	function searchOrder(){
		_str = $('#o_str').val();
		_from_date = $('#o_fromDate').val();
		_end_date = $('#o_endDate').val();
		_url = _url = "{{config('admin.base_url')}}admin/ajax/searchOrder";
		$.get(_url, {str: _str, from_date: _from_date, end_date: _end_date}, function(data){
			$("#tbody_order").html(data);
		});
	}
	$(document).ready(function () {
		$("#content_form_crm").delegate(".sanpham_kham, .soluong_sp", "change", function(){
			_id = $(this).data('id');

			autoGetPrice(_id);

		});

		$("#content_table_crm").delegate("#s_str, #s_fromDate, #s_endDate", "change", function(){
			searchBenhAn();
			
		});

		$("#content_table_crm").delegate("#o_str, #o_fromDate, #o_endDate", "change", function(){
			searchOrder();
			
		});

		$("#content_form_crm").delegate(".add_product", "click", function(){
			_count = parseInt($('#sp_count').val());
			_url = "{{config('admin.base_url')}}ajax/addProduct";
			$.get(_url, {count: _count}, function(data){
				$("#tbody_sp").append(data);
				$('#sp_count').val(_count + 1);
			});
		});

		$("#content_table_crm").delegate(".benhan_data", "click", function(){
			_id = $(this).data('id');
			_url = "{{config('admin.base_url')}}admin/ajax/getBenhAn";
			$.get(_url, {id: _id}, function(data){
				$("#content_form_crm").html(data);
			});
		});
	});
</script>