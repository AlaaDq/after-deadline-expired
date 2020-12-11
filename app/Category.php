<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $guarded=[];
    protected $hidden = ['pivot'];

    public function task(){
        return  $this->belongsTo('App\Task');
        return  $this->belongsToMany('App\Task', 'category_task');

    }
}
