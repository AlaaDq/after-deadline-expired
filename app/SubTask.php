<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubTask extends Model
{
    protected $guarded=[];

    public function task(){
        return  $this->belongsTo('App\Task');
    }
}
