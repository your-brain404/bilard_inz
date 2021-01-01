<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AboutUs extends Model {

	protected $table = 'about_us';

	protected $fillable = ['title', 'subtitle', 'short_description', 'description', 'photo', 'photo_alt', 'button_name'];

}
