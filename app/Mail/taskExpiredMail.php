<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class taskExpiredMail extends Mailable implements ShouldQueue
{
    use Queueable, SerializesModels;

    protected $details;

    /**
     *  Create a new message instance.
     *
     * @return void
     */
    public function __construct($details)
    {
        $this->details = $details;
    }


    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $address = 'alaadq70@gmail.com';

        $name = 'the boss'; 
 
         return $this->view('emails.taskExpired')
        ->from($address, $name) 
        ->subject($this->details['subject'])
        ->with("details",$this->details);
    }
}
