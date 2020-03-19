@extends('frontend.layouts.deafault')

@section('title')
{{getName($obj)}}
@endsection

@section('content')
<div class="container">
  <div class="row">
    <div id="primary" class="content-area col-md-12">
      <main id="main" class="site-main">
        <div class="single-post clearfix">
<!--           <div class="breadcrums ">
            <div id="crumbs">
              <span><a href="{{route('trangchu')}}">{{ trans('menu.trangchu') }}</a></span>
              @if($obj->type == 1)
              <span >/</span>
              <span><a href="{{route('post.list')}}"> {{ trans('menu.tintuc') }}</a></span>
              @endif
              <span >/</span>
              <span class="delimiter">{{getName($obj)}}</span>
            </div>
          </div> -->
          <div class="sigle-header">
            <h1 class="entry-title">{{getName($obj)}}</h1>
            <!-- <p class="time">{{date('d/m/Y', strtotime($obj->created_at))}}</p> -->
          </div>

          <article class="type-post">
           {!! getContent($obj) !!}
          </article><!--  end -->
          <div class="comment">

          </div><!--  end -->
          <div class="related-post">
            <div class="related-title-block">
              <h3 class="related-title">{{ trans('menu.baivietkhac') }}</h3>
            </div>
            <div class="show-related clear clearfix">
              <div class="related1 clearfix clear">
                <div class="row">
                  @foreach($posts as $post)
                  <div class="item-related1 col-md-4 col-sm-4 col-sx-6">
                    <div class="item-inner1 clearfix">
                      <a href="{{route('post.detail',['slug'=>$post->slug])}}" title="{{getName($post)}}">
                        <div class="thumb">
                          <img src="{{$post->thumb}}" alt="{{getName($post)}}">
                        </div>
                        <div class="description">
                          <h3>{{getName($post)}}</h3>
                          <p>
                            {{(strlen(getDes($post)) > 200) ? substr(getDes($post), 0, 200) . '...' : getDes($post)}}
                          </p>
                        </div>
                      </a>
                    </div>
                  </div>
                  @endforeach
                </div>
              </div>
            </div>
          </div><!--  end -->
        </div><!--  end -->
      </main><!--  end -->
    </div> 
  </div>
</div>
@endsection
