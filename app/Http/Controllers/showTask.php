<?php

namespace App\Http\Controllers;

use App\Task;
use Illuminate\Http\Request;

class showTask extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Task $task)
    {
        $task->load('subTasks','categories:id,name,color');
        return $task->toJson();
    }
}
