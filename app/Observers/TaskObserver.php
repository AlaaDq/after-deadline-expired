<?php

namespace App\Observers;

use App\Mail\taskExpiredMail;
use App\Task;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;

class TaskObserver
{
    /**
     * Handle the task "created" event.
     *
     * @param  \App\Task  $task
     * @return void
     */
    public function created(Task $task)
    {

        $details=[
            "mailto"=>"alaa.eddin.ksibati.97@gmail.com",
            "subject"=>"task expired",
            "body"=>"task"
            ];

        $deadline=Carbon::createFromFormat('Y/m/d 00:00:00',$task->deadline." 00:00:00");

        Mail::to($details["mailto"])
        ->later($deadline, new taskExpiredMail($details,$task));
        
    }

    /**
     * Handle the task "updated" event.
     *
     * @param  \App\Task  $task
     * @return void
     */
    public function updated(Task $task)
    {
        //
    }

    /**
     * Handle the task "deleted" event.
     *
     * @param  \App\Task  $task
     * @return void
     */
    public function deleted(Task $task)
    {
        //
    }

    /**
     * Handle the task "restored" event.
     *
     * @param  \App\Task  $task
     * @return void
     */
    public function restored(Task $task)
    {
        //
    }

    /**
     * Handle the task "force deleted" event.
     *
     * @param  \App\Task  $task
     * @return void
     */
    public function forceDeleted(Task $task)
    {
        //
    }
}
