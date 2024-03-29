<script type="text/javascript" src="{{asset('js/jquery.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/bootstrap.min.js')}}" ></script>
<script type="text/javascript" src="{{asset('js/lightslider.min.js')}}" ></script>
<script type="text/javascript" src="{{asset('js/jquery.zoom.js')}}" ></script>
<script type="text/javascript" src="{{asset('js/jquery-ui.js')}}" ></script>
<script type="text/javascript" src="{{asset('js/jquery.timepicker.min.js')}}" ></script>
<script type="text/javascript" src="{{asset('js/custom.js')}}" ></script>

<script type="text/javascript">
	function loadjscssfile(filename, filetype){
        if (filetype=="js"){ //if filename is a external JavaScript file
        	var fileref=document.createElement('script')
        	fileref.setAttribute("type","text/javascript")
        	fileref.setAttribute("src", filename)
        }
        else if (filetype=="css"){ //if filename is an external CSS file
        	var fileref=document.createElement("link")
        	fileref.setAttribute("rel", "stylesheet")
        	fileref.setAttribute("type", "text/css")
        	fileref.setAttribute("href", filename)
        }
        if (typeof fileref!="undefined")
        	document.getElementsByTagName("head")[0].appendChild(fileref)
    }
    function emailIsValid (email) {
    	return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)
    }

    base_url = "{{config('admin.base_url')}}";
    getProduct_url = base_url + "ajax/getProductInfo";
    sendContact_url = base_url + "ajax/sendContact";
    searchProduct_url = base_url + "ajax/searhProduct";
    $(document).on('click','.quick-view-button', {} ,function(e){
        _product_id = $(this).data('id');
        $.get(getProduct_url, {product_id: _product_id}, function(data){
            $('#div_modal_quick_view').html(data);
             // slider sản phẩm
            $('.image-slider').lightSlider({
                gallery:true,
                item:1,
                thumbItem:7,
                slideMargin: 0,
                auto:false,
                loop:false,
            });
            $('#view_conter').modal('toggle');
        });
    });

    $('#btn_search').click(function(){
        _text_search = $('#text_search').val();
        $.get(searchProduct_url, {text_search: _text_search}, function(data){
            $('#div_product').html(data);
        });
    });

    $('.send_contact').click(function(){
        _email = $('#email_contact').val();
        if(emailIsValid(_email)){
            $.get(sendContact_url, {email: _email}, function(data){
                $('#email_contact').val('');
                alert(data);
            });
        }else{
            alert('Email không hợp lệ !');
        }
    });
    $(document).ready(function() {
        $("#mainContentBoby").delegate(".add_cart", "click", function(){
            const _product_id = $(document).find('#product_id').val();
            const _color_id = $(document).find("ul.product-option-list > li > div.active").data('id');
            if(typeof _color_id == "undefined") {
                alert("Bạn vui lòng chọn màu sản phẩm?");
                return
            }
            const _qty_product = $(document).find('#qty_product').val();
            const _url = '{{config('admin.base_url')}}ajax/addToCart';
            $.get(_url, {product_id: _product_id, color_id: _color_id, qty_product: _qty_product}, function(data){
                $('.cart_qty').html(data['sum']);
                alert(data['msg']);
            });
        });

        $("#mainContentBoby").delegate(".removeProductCart", "click", function(){
            color_id = $(this).data('id');
            $('#color_delete_id').val(color_id);
            $('#delete-sup').modal('toggle');
        });

        $("#mainContentBoby").delegate(".input_quantity_product", "change", function(){
            const _qty = $(this).val();
            const _id = $(this).data('id');
            const _color_id = $(this).data('color_id');
            const _product_id = $(this).data('product_id');
            const _url = '{{config('admin.base_url')}}ajax/updateToCart';
            $.get(_url, {id: _id, color_id: _color_id, qty_product: _qty, product_id: _product_id}, function(data){
               const _status = data['status'];
               if(_status == 0) alert(data['msg']);
               else{
                    $('.sum_cart').html(data['total']);
                    $('#sum_price_'+_id).html(data['sum']);
               }
            });
        });
    });

    $('.datetimepicker').timepicker({
        timeFormat: 'HH:mm',
    });
</script>
