@extends('layouts/app')

@section('content')

<h1>Polls</h1>

@foreach ($polls as $poll)
    <div class="container">
       <a href="{{action('PollController@show', [$poll->id])}}"><h2>{{$poll->title}}</h2></a>
    </div>
@endforeach

@endsection