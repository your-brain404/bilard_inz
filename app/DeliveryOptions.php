<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DeliveryOptions extends Model
{
    protected $table = 'delivery_options';

    protected $fillable = ['active', 'title', 'price', 'value'];
}
