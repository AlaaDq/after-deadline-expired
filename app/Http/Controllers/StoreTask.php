<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreTaskRequest;
use App\Task;
use Illuminate\Http\Request;


class StoreTask extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(StoreTaskRequest $request)
    {

        //the creation  logic hidden in formRequest 
        $request->processStore();
        return response()->json(['success'=>true]);
    }
}
