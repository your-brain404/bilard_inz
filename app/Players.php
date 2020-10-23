<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Players extends Model
{
    protected $table = 'players';

    protected $fillable = ['first_name', 'last_name', 'subtitle', 'league', 'photo', 'photo_alt', 'description', 'active', 'button_name'];
}
