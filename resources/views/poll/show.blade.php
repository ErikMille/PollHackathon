@extends('layouts/app')

@section('content')
<h1>{{$poll->title}}</h1>


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
</form>
<br>
<div class="container">
    @foreach ($poll->questions as $question)
        <div class="form-group">
            <label><h4>{{$question->text}}</h4></label>
              @foreach ($question->options as $option)
              <p>{{$option->text}} Votes: {{$option->votes()->count()}}</p>
              @endforeach
        </div>
    @endforeach
</div>

@endsection