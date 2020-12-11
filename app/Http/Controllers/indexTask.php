<?php

namespace App\Http\Controllers;

use App\Task;
use Illuminate\Http\Request;

class indexTask extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {
        $tasks=Task::select('id','description','end_flag','deadline')->with('categories')->get();
        return $tasks->toJson();
    }
}
