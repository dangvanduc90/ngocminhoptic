@extends('frontend.layouts.deafault')

@section('title')
{{ trans('menu.datlich') }}
@endsection

@section('content')
<div class="container">
    @if(session('success-datlich'))
    <div class="alert alert-success">
        <strong>{{session('success-datlich')}}</strong>
    </div>
    @endif
    <div class="row">
        <div id="primary" class="content-area col-md-12">
            <main id="main" class="site-main">
                <div class="category-header text-center"><h1 class="entry-title">{{ trans('menu.datlich') }}</h1></div>
                <div class="notices-wrapper clearfix">
                    <div class="row">
                        <form name="checkout" action="{{route('datlich.post')}}" method="post" class="product-checkout col-md-5">
                            @csrf
                            <div class="col2-set" id="customer_details">
                                <div class=" dat-lich-hen billing-fields">
                                    <div class="form-group">
                                        <span class="not-null">*</span>
                                        <span class="icon_checkout ico-name"></span>
                                        <input type="text" class="form-control" id="ho-ten" name="name" placeholder="{{ trans('menu.nhaphovaten') }}" required>
                                    </div>
                                    <div class="form-group">
                                        <span class="icon_checkout ico-diachi"></span>
                                        <input type="text" class="form-control" name="address" placeholder="{{ trans('menu.nhapdiachi') }}" required>
                                    </div>
                                    <div class="form-group">
                                        <span class="icon_checkout ico-email"></span>
                                        <input type="email" class="form-control" id="" name="email" placeholder="{{ trans('menu.nhapemail') }}" required>
                                    </div>
                                    <div class="form-group">
                                        <span class="not-null">*</span>
                                        <span class="icon_checkout ico-tel"></span>
                                        <input type="tel" class="form-control" name="phone" placeholder="{{ trans('menu.nhapdienthoai') }}" required>
                                    </div>
                                    <div class="ngay-dat-lich">
                                        <div class="form-group">
                                            <span class="not-null">*</span>
                                            <span class="tooltiptexts">09:30 am/pm</span>
                                            <span class="icon_checkout ico-ngay-dat"></span>
                                            <input type="text"class="form-control datetimepicker" name="gio" placeholder="{{ trans('menu.giodatlich') }}" id="gioi-dat-lich" required>
                                        </div>
                                        <div class="form-group">
                                            <span class="not-null">*</span>
                                            <span class="tooltiptexts">20/09/2019</span>
                                            <span class="icon_checkout ico-ngay-dat"></span>
                                            <input type="text" class="form-control" name="ngay" placeholder="{{ trans('menu.ngaydatlich') }}" id="dat-lich" autocomplete="disabled" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <span class="icon_checkout ico-diachi"></span>
                                        <select class="mdb-select md-form" name="coso" required>
                                            @foreach($cosos as $key=>$coso)
                                            <option value="{{$coso->id}}">{{$coso->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <input type="hidden" id="cosos" value="{{ json_encode($cosos) }}">

                                    <div class="form-group">
                                        <span class="icon_checkout ico-noi-dung"></span>
                                        <textarea name="content" class="form-control" id="" cols="30" rows="5" placeholder="{{ trans('menu.noidung') }}"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-default" data-target="" >{{ trans('menu.gui') }}</button>
                                </div>
                            </div>
                        </form>
                        @if(count($cosos) > 0)
                        <div class="col-md-7 maps">
                            {!! $cosos->first()->address !!}
                        </div>
                        @endif
                    </div>
                </div>

            </main>
        </div>
    </div>
</div>
@endsection
@section('js')
    <script>
        $(document).ready(function () {
            $(".mdb-select").change(function () {
                const cosos = {!! json_encode($cosos) !!};
                const idSelected = $(this).val();
                let index = -1;
                for (let i = 0; i < cosos.length; i++) {
                        if(cosos[i].id == idSelected) {
                            index = i;
                            break;
                        }
                }

                const coso = cosos[index];
                $(".maps").html(coso.address)
            })
        })
    </script>
@endsection
