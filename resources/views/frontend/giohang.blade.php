@extends('frontend.layouts.deafault')

@section('title')
{{ trans('menu.giohang') }}
@endsection

@section('content')

<div class="container" id="div_giohang">
@include('frontend.partials.content-giohang')
</div>
@include('frontend.partials.modal-delete')
@endsection

