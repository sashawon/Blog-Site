@extends('front/layout.layout')

@section('page_title','Home Page')
@section('image')
    background-image: url('{{ asset('front_asset/assets/img/home-bg.jpg') }}')
@stop
@section('page_name','Welcome New Blog Site')

@section('container')

    @foreach($result as $list)
    <div class="post-preview">
        <a href="{{url('post/'.$list->slug)}}">
            <h2 class="post-title">{{$list->title}}</h2>
            <h3 class="post-subtitle">{{$list->short_desc}}</h3>
        </a>
        <p class="post-meta">
            Posted on {{$list->post_date}}
        </p>
    </div>
    <hr />
    @endforeach

@endsection

