@extends('frontend.layouts.deafault')

@section('title')
{{ trans('menu.sanpham') }}
@endsection

@section('content')
<div class="container">
  <div class="row">
    <div id="primary" class="content-area col-md-12">
      <main id="main" class="site-main">
{{--        @foreach($types as $type)--}}
{{--        <div class="category-header">--}}
{{--          <h1 class="entry-title">{{ getName($type) }}</h1>--}}
{{--        </div>--}}
        <div class="category-archive clearfix">
            <div class="list-product-cart" id="div_product">
              <div class="row">
                @include('frontend.partials.list-product',['products'=> $products])
              </div>
            </div>
        </div>
{{--        @endforeach--}}
      </main>
    </div>
  </div>
</div>
<div id="div_modal_quick_view"></div>
@endsection
