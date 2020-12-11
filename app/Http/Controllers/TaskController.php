<?php

namespace App\Http\Controllers;

use App\Task;
use Illuminate\Http\Request;
use App\Jobs\ProcessMail;
use App\Mail\taskExpiredMail;
use Illuminate\Support\Facades\Mail;
use Carbon\Carbon;
class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tasks=Task::select('id','description','end_flag','deadline')->with('categories')->get();
        return $tasks->toJson();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    { 
	
	$details=[
	"mailto"=>"alaa.eddin.ksibati.97@gmail.com",
	"subject"=>"task expired",
	"body"=>"task"
	];
		
	$deadline=Carbon::createFromFormat('Y/m/d 00:00:00',$request['deadline']." 00:00:00");

	\Mail::to($details["mailto"])
    ->later($deadline, new taskExpiredMail($details));
			
        Task::create($request->only(['description','deadline','end_flag','created_at']));
        return response()->json(['success'=>true]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function show(Task $task)
    {
        $task->load('subTasks','categories:id,name,color');
        return $task->toJson();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function edit(Task $task)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Task $task)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function destroy(Task $task)
    {
        //
    }
}
