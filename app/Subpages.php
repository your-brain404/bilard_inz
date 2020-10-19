<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subpages extends Model
{
    protected $table = 'subpages';

    protected $fillable = ['title', 'page', 'photo', 'photo_alt'];
}
