<?php

namespace App\Mail;

use App\Task;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class taskExpiredMail extends Mailable implements ShouldQueue
{
    use Queueable, SerializesModels;

    protected $details;
    protected $task;
    protected $address;
    protected $name;
 

    /**
     *  Create a new message instance.
     *
     * @return void
     */
    public function __construct($details,Task $task)
    {
        
        $this->details = $details;
        $this->task = $task;
        $this->address = 'alaadq70@gmail.com';
        $this->name = 'the boss'; 
    }



    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
      

        $this->task->end_flag=1;
        $this->task->save();
        
         return $this->view('emails.taskExpired')
        ->from($this->address, $this->name) 
        ->subject($this->details['subject'])
        ->with("details",$this->details);
    }
}
