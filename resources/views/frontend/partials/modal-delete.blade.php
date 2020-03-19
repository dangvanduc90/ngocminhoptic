<div class="modal fade" id="delete-sup" role="dialog">
    <div class="modal-dialog modal-sm seting-modal">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="text-delete">
                 <h4 class="modal-title">{{ trans('menu.xoakhoigiohang') }}</h4>
                </div>
            </div>
            <form method="POST" action="{{route('product.removeCart')}}">
                @csrf
            <div class="modal-body clearfix">
                <div class="comment-d">
                    <p>{{ trans('menu.bancomuonxoa') }}</p>
                </div>
                <div class="button-contenr">
                    <input type="hidden" id="color_delete_id" name="color_id">
                    <button type="submit" class="btn btn-default delete-product" >{{ trans('menu.xoa') }}</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('menu.thoat') }}</button>
                </div>
            </div>
            <div class="modal-footer"></div>
            </form>
        </div>
    </div>
</div>