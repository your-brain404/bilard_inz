<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class AnswerForm extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    protected $contact_data;

    public function __construct(array $contact_data)
    {
        $this->contact_data = $contact_data;
    }
    
    public function attachments() {
        return $this->contact_data['mail']->attachments;
    }
    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $mail = $this->markdown('mails.answer');
        if(!empty($this->attachments())) {
            foreach($this->attachments() as $attachment) $mail->attach(storage_path() .'/app/public/attachments/'. $attachment->path);
        } 
        return $mail->subject($this->contact_data['subject'])->with($this->contact_data);
    }
}
