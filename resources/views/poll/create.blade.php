@extends('layouts/app')

@section('content')

<div class='container'>
  
  <form method="post" action="{{action('PollController@store')}}">
      @csrf
      <div class="form-group">
        <label>Title</label>
        <input type="text" name="title" class="form-control">
      </div>
      @for ($i = 1; $i < 5; $i++)
      <div class="form-group">
        <label>Question {{$i}}:</label>
        <input type="text" name="questions[{{$i}}]" class="form-control">
        <ul>
            <li><input type="text" name="options[{{$i}}][]"></li>
            <li><input type="text" name="options[{{$i}}][]"></li>
            <li><input type="text" name="options[{{$i}}][]"></li>
            <li><input type="text" name="options[{{$i}}][]"></li>
        </ul>
      </div>
      @endfor
      <button type="submit" class="btn btn-primary">Submit</button>
  </form>

</div>

@endsection