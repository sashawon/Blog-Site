@extends('front/layout.layout')

@section('page_title',$result[0]->title)
@section('image')
	background-image: url('{{asset('storage/post/'.$result[0]->image)}}')
    
@stop
@section('page_name',$result[0]->title)

@section('container')
    <p>{{$result[0]->long_desc}}</p>
@endsection

