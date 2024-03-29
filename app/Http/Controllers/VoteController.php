<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Option;
use App\Question;
use App\Poll;
use App\User;
use App\Vote;


class VoteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        foreach ($request->option_id as $option_id) {
            $newVote = new Vote;
            $newVote->user_id = \Auth::user()->id;
            $newVote->option_id = $option_id;
            $newVote-> save();
        }  
        $option = Option::find($request->option_id[0]); 
        return redirect(action('PollController@show', [$option->question->poll->id]));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {   
        $poll = Poll::find($id);
        $user_id=\Auth::user()->id;
        foreach ($request->option_id as $option_id) {
            $option=Option::find($option_id);
            $question=$option->question;
            $vote=Vote::where('user_id',$user_id)->whereIn('option_id',$question->options->pluck('id'))->first();
            $vote->option_id = $option_id;
            $vote-> save();
        }
        return redirect(action('PollController@show', [$poll->id]));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
