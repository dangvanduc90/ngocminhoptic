@extends('frontend.layouts.deafault')

@section('title')
{{ trans('menu.baiviet') }}
@endsection

@section('content')
<div class="container">
  <div class="row">
    <div id="primary" class="content-area col-md-12">
      <main id="main" class="site-main">

        <!-- <div class="breadcrums">
          <div id="crumbs">
            <span><a href="{{route('trangchu')}}">{{ trans('menu.trangchu') }}</a></span>
            <span >/</span>
            <span class="delimiter">{{ trans('menu.tintuc') }}</span>
          </div>
        </div> -->
        <div class="category-header">
          <h1 class="entry-title">{{ isset($title) ? trans('menu.' . $title) : trans('menu.baiviet') }}</h1>
        </div>
        <div class="category-archive clearfix">
          <div class="row">
            @foreach($posts as $post)
            <div class="col-md-3 col-sm-6 col-xs-6 post-listing">
              <div class="news_focus">
                <div class="post-thumbnail1">
                  <a href="{{route('post.detail',['slug'=>$post->slug])}}"><img src="{{$post->thumb}}" alt=""></a>
                </div>
                <div class="entry">
                  <h3 class="post-box-title"><a href="{{route('post.detail',['slug'=>$post->slug])}}">{{getName($post)}}</a></h3>
                  <p class="post-meta">{{date('d/m/Y', strtotime($post->created_at))}}</p>
                  <p class="noi-dung">{{(strlen(getDes($post)) > 200) ? substr(getDes($post), 0, 200) . '...' : getDes($post)}}</p>
                </div>
              </div>
            </div>
            @endforeach
          </div>
        </div>
        <div class="pham-trang-post">
          <div class="col-md-12 ">
           {{$posts->links()}}
          </div>
        </div>
      </main>
    </div>
  </div>
</div>
@endsection
