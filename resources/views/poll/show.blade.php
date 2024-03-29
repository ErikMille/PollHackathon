@extends('layouts/app')

@section('content')
<h1>{{$poll->title}}</h1>

@if($ifVote)
<form method="post" action="{{action('VoteController@update',$poll->id)}}">
    @csrf
    @method('PUT')
    <div class="container">
    @foreach ($poll->questions as $question)
            <div class="form-group">
                <label><h4>{{$question->text}}</h4></label>
                <select name="option_id[]" class="form-control">
                  @foreach ($question->options as $option)
                  <option value="{{$option->id}}">{{$option->text}}</option>
                  @endforeach
                </select>
            </div>
    @endforeach
    <!-- <input type="hidden" name="$_PUT">  -->
    <!-- trick to use PUT method -->
    <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</form><br>
@else
<form method="post" action="{{action('VoteController@store')}}">
    @csrf
    <div class="container">
    @foreach ($poll->questions as $question)
            <div class="form-group">
                <label><h4>{{$question->text}}</h4></label>
                <select name="option_id[]" class="form-control">
                  @foreach ($question->options as $option)
                  <option value="{{$option->id}}">{{$option->text}}</option>
                  @endforeach
                </select>
            </div>
    @endforeach
    <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</form><br>
@endif

@if((\Auth::user())&&(($poll->user_id == \Auth::user()->id)||(App\Vote::where('user_id', \Auth::user()->id)->whereIn('option_id', $poll->questionOption()->pluck('options.id'))->count())))
@include('poll.owner')
@endif

@endsection