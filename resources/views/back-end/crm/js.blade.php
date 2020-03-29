<script>
	function autoGetPrice(id){
		let _selected = $( "#sanpham_"+id+" option:selected" );
		let _price = _selected.data('price');
		let _sl = $('#soluong_'+id).val();
		if(_sl == ''){
			_sl = 0;
			$('#soluong_'+id).val(_sl);
		}
		_sum = _price*_sl;
		$('#thanhtien_'+id).val(_sum);
		$('#gia_'+id).val(_price);
        calculator_loan();

        const total_amount_products = calculator_total_amount();

        $("#tongtien-admin").val(total_amount_products)
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
			const _id = $(this).data('id');

			autoGetPrice(_id);

            if($(this).hasClass('sanpham_kham') && $(this).val() != '') {
                let _selected = $( "#sanpham_"+_id+" option:selected" );
                let _masp = _selected.data('masp');
                $("#masp_" + _id).val(_masp);
            }

		});
		$("#content_form_crm").delegate(".sanpham_kham, .soluong_sp", "keyup", function(){
			_id = $(this).data('id');

			autoGetPrice(_id);

		});
		$("#quan-ly-han").delegate("#khmi-admin, #datcoc-admin", "keyup", function(){
            calculator_loan();
        });
		$("#quan-ly-han").delegate("#khmi-admin, #datcoc-admin", "change", function(){
            calculator_loan();
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
		$("#content_form_crm").delegate(".remove_product", "click", function(){
			$(this).closest('.btn-reveal-trigger').remove();
		});

		$("#content_table_crm").delegate(".benhan_data", "click", function(){
			_id = $(this).data('id');
			_url = "{{config('admin.base_url')}}admin/ajax/getBenhAn";
			$.get(_url, {id: _id}, function(data){
				$("#content_form_crm").html(data);
			});
		});
	});
    $('.datepicker').datepicker({
        dateFormat: "dd/mm/yy"
    });

    function confirmFormDelete(id) {
        // const id = form.serialize().id;
        // console.log(form.serialize())
        // console.log(id)
        if(confirm('Chắc chắn muốn xóa lịch hẹn này?')) {
            $.ajax({
                url: "/admin/ajax/deleteOrder/" + id,
                method: 'post',
                data: {
                    _token: "{{ csrf_token() }}",
                    id: id
                },
                success: function (data) {
                    if( data == 1) {
                        let idSelector = $("#order_" + id);
                        if(idSelector) {
                            idSelector.remove();
                        }
                    }
                },
                error: function () {
                    alert("error")
                }
            })
        }
        return false;
    }

    function calculator_loan() {
        const total_amount_products = calculator_total_amount();
        let khieunai = parseInt($("input[name='khieunai']").val()) || 0;
        let datcoc = parseInt($("input[name='datcoc']").val()) || 0;

        let congno = 0;
        if (datcoc !== 0) {
            congno = total_amount_products - (khieunai + datcoc);
        }
        $("input[name='congno']").val(congno);
    }

    function calculator_total_amount() {
        let total_amount_products = 0;
        $("input[name='thanhtien[]']").each(function () {
            total_amount_products += parseInt($(this).val()) || 0;
        });
        return total_amount_products;
    }

    $("#form-exports-benhan").click(function (e) {
        const form = $(this);
        e.preventDefault();
        $(this).find(".exports-input-benhans").remove();

        $("#tbody_benhan tr").each(function (index) {
            $(this).find("td").each(function () {
                const cell = $(this).html();
                const html = `<input type="hidden" class="exports-input-benhans" name="benhans[${index}][]" value="${cell}">`;
                form.append(html);
            });
        });
        form.submit();
    });
    $("#form-exports-lichhen").click(function (e) {
        const form = $(this);
        e.preventDefault();
        $(this).find(".exports-input-lichhens").remove();

        $("#tbody_order tr").each(function (index) {
            const max =$(this).find("td").length;
            $(this).find("td").each(function (i) {
                if (i + 1 < max) {
                    const cell = $(this).html();
                    const html = `<input type="hidden" class="exports-input-lichhens" name="lichhens[${index}][]" value="${cell}">`;
                    form.append(html);
                }
                return;
            });
        });
        form.submit();
    });
    $("#form-exports-sanpham-submit").click(function (e) {
        const form = $("#form-exports-sanpham");
        form.find(".exports-input-sanphams").remove();

        $("#tbody_sp tr").each(function (index) {
            $(this).find("td").each(function (i) {
                const cell = $(this).html();
                let html = '';
                if(i === 0) { // STT
                    html = `<input type="hidden" class="exports-input-sanphams" name="sanphams[${index}][]" value="${cell}" form="form-exports-sanpham">`;
                }
                if(i === 1) { // Sản phẩm
                    const text =  $(this).find("select option:selected").text();
                    html = `<input type="hidden" class="exports-input-sanphams" name="sanphams[${index}][]" value="${text}" form="form-exports-sanpham">`;
                }
                if(i === 2) { // Giá
                    const text =  $(this).find("input").val();
                    html = `<input type="hidden" class="exports-input-sanphams" name="sanphams[${index}][]" value="${text}" form="form-exports-sanpham">`;

                }
                if(i === 3) { // Số lượng
                    const text =  $(this).find("input").val();
                    html = `<input type="hidden" class="exports-input-sanphams" name="sanphams[${index}][]" value="${text}" form="form-exports-sanpham">`;
                }
                if(i === 4) { // Thành tiền
                    const text =  $(this).find("input").val();
                    html = `<input type="hidden" class="exports-input-sanphams" name="sanphams[${index}][]" value="${text}" form="form-exports-sanpham">`;
                }
                form.append(html);
            });
        });
        return;
        form.submit();
    });

    $("#content_form_crm").delegate(".debounce", "keyup", function(){
        const that = $(this);
        const masp = $(this).val();
        // Fetch data
        $.ajax({
            type: 'GET',
            url: '/admin/ajax/searchKhamBenh',
            dataType: 'json',
            data: {
                masp: masp
            },
            success: function( product ) {
                if (product.hasOwnProperty('id')) {
                    that.closest('tr').find('.sanpham_kham').val(product.id).change()
                } else {
                    that.closest('tr').find('.sanpham_kham').val('').change()
                }
            }
        });
    })
</script>
