<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    protected $guarded=[];
    protected $hidden = ['pivot'];


    public function categories(){
        return  $this->belongsToMany('App\Category', 'category_task');
    }

    public function subTasks(){
        return $this->hasMany('App\SubTask');
    }
}
