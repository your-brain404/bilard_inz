<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\DeliveryOptions;
use App\CartDescriptions;

class NewOrder extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    protected $data;

    public function __construct(object $data) {
        $this->data = $data;
    }

    public function getPayment($payment) {
        $cart_descriptions = CartDescriptions::find(1);
        return $payment == 'personal' ? $cart_descriptions->personal : $cart_descriptions->traditional;
    }

    public function build()
    {
        return $this->markdown('mails.new_order')->subject('Nowe zamówienie')->with(['order' => $this->data, 'delivery' => DeliveryOptions::where('value', $this->data->delivery)->first(), 'payment' => $this->getPayment($this->data->payment)]);
    }
}
