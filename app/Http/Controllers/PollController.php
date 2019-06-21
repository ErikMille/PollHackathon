<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Option;
use App\Question;
use App\Poll;
use App\User;
use App\Vote;


class PollController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth')->except('index','show');
    }
    public function index()
    {
        //
        $polls = Poll::all();
        return view('/poll/index',compact('polls'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('poll/create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //return $request->questions;
        $newpoll = new Poll;
        $newpoll->title = $request->title;
        $newpoll->user_id = \Auth::user()->id;
        $newpoll->save();
        foreach ($request->questions as $question_id => $question) {
            $newquestion = new Question;
            $newquestion->text = $question;
            $newquestion->poll_id = $newpoll->id;
            $newquestion->save();
            foreach ($request->options[$question_id] as $option) {
                $newoption = new Option;
                $newoption->text = $option;
                $newoption->question_id = $newquestion->id;
                $newoption->save();
            }
        }
        redirect(action('PollController@index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $poll = Poll::find($id);
        $ifVote=0;
        if(\Auth::user()){
        $ifVote = Vote::where('user_id', \Auth::user()->id)->whereIn('option_id', $poll->questionOption()->pluck('options.id'))->count();
        }
        return view('poll/show', compact('poll','ifVote'));
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
        //
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
