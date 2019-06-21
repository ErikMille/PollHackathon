<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    //
    public function poll()
    {
        return $this->belongsTo('App\Poll');
    }
    public function options()
    {
        return $this->hasMany('App\Option');
    }
    public function votes()
    {
        return $this->hasMany('App\Vote');
    }
}
