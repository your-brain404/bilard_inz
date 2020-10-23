<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cups extends Model
{
    protected $table = 'cups';

    protected $fillable = ['title', 'active', 'description', 'photo', 'photo_alt', 'button_name'];
}
