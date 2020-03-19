@extends('frontend.layouts.deafault')

@section('title')
{{ trans('menu.in') }}
@endsection

@section('content')
<div class="container">
    <div class="row">
        <div id="primary" class="content-area col-md-12">
            <main id="main" class="site-main">

                <div class="in-hoa-don">
                    <div class="breadcrums">
                        <div id="crumbs">
                            <span><a href="{{route('trangchu')}}">{{ trans('menu.trangchu') }}</a></span>
                            <span >/</span>
                            <span class="delimiter">{{ trans('menu.thtt') }}</span>
                        </div>
                    </div>
                    <div class="category-header">
                        <h1 class="entry-title">{{ trans('menu.in') }}</h1>
                    </div>
                    <div class="thong-bao">
                        <p>{{ trans('menu.camon') }}</p>
                    </div>
                    <div class="bottom-an">
                        <button  class="btn btn-default" onclick="window.location.href='{{route('download.hoadon')}}'">{{ trans('menu.in') }}</button>
                        <a href="{{route('trangchu')}}">{{ trans('menu.trangchu') }}</a>
                    </div>
                </div>
            </div>
        </div>

    </main>
</div>
</div>
</div>
@endsection
