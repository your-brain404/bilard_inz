<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LuckyNumber extends Model
{
    protected $table = 'lucky_number';

    protected $fillable = ['active', 'number', 'title', 'subtitle', 'description'];
}
