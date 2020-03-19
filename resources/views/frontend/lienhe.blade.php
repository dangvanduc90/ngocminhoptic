@extends('frontend.layouts.deafault')

@section('title')
{{ trans('menu.lienhe') }}
@endsection

@section('content')
<div class="container">
    @if(session('success-lienhe'))
    <div class="alert alert-success">
        <strong>{{session('success-lienhe')}}</strong>
    </div>
    @endif
    <div class="row">
        <div id="primary" class="content-area  col-md-12">
            <main id="main" class="site-main">

               <!--  <div class="breadcrums">
                    <div id="crumbs">
                        <span><a href="{{route('trangchu')}}">{{ trans('menu.trangchu') }}</a></span>
                        <span >/</span>
                        <span class="delimiter">{{ trans('menu.lienhe') }}</span>
                    </div>
                </div> -->
                <div class="category-header">
                    <h1 class="entry-title">{{ trans('menu.lienhe') }}</h1>
                </div>
                <div class="page-contenr clearfix">
                    <div class="row">
                        @foreach($cosos as $coso)
                        <div class="maps-contact-left clearfix">
                             <div class="col-md-6">
                                <div class="contact-left">
                                    {!! getContent($coso) !!}
                                </div>
                            </div>
                            <div class="col-md-6 maps">
                                {!! $coso->code !!}
                            </div>
                        </div>


                        @endforeach
                        <div class="col-md-12">
                            <div class="form-lien-he">
                                <form class="item-label" action="{{route('lienhe.post')}}" method="POST">
                                    @csrf
                                    <div class="row">
                                        <div class="form-group col-md-4">
                                            <span class="not-null">*</span>
                                            <span class="icon_checkout ico-name"></span>
                                            <input type="text" class="form-control" id="name" name="name" placeholder="{{ trans('menu.nhaphovaten') }}" value="" required>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <span class="not-null">*</span>
                                            <span class="icon_checkout ico-tel"></span>
                                            <input type="tel" class="form-control" id="tel" name="phone" placeholder="{{ trans('menu.nhapdienthoai') }}" value="" required>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <span class="not-null">*</span>
                                            <span class="icon_checkout ico-email"></span>
                                            <input type="email" class="form-control" id="email" name="email" placeholder="{{ trans('menu.nhapemail') }}" required value="" >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <span class="not-null">*</span>
                                        <span class="icon_checkout ico-diachi"></span>
                                        <input type="text" class="form-control" id="diachi" name="address" placeholder="{{ trans('menu.nhapdiachi') }}" required value="" >
                                    </div>

                                    <div class="form-group">
                                        <span class="icon_checkout ico-noi-dung"></span>
                                        <textarea class="form-control" name="content" cols="30" rows="5" placeholder="{{ trans('menu.noidung') }}" required></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-default">{{ trans('menu.gui') }}</button>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>

            </main>
        </div>
    </div>
</div>
@endsection
