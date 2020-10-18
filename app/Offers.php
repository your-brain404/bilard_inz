<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Offers extends Model
{
 	protected $table = 'offers';   

 	protected $fillable = ['title', 'subtitle', 'photo', 'photo_alt', 'short_description' , 'description', 'active', 'home_page'];
}
