
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