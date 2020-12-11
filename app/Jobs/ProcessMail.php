<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use App\Mail\taskExpiredMail;
use Illuminate\Support\Facades\Mail;
use App\Task;
class ProcessMail implements ShouldQueue 
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $details;
    protected $task;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($details,Task $task)
    {
        $this->details = $details;
        $this->task = $task;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {

        $this->task->end_flag=1;
        $this->task->save();
        
        
        $email = new taskExpiredMail($this->details,$this->task);

        Mail::to($this->details['mailto'])->send($email);
    }
}
