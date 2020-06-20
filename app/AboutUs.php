<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AboutUs extends Model {
	protected $fillable = ['title', 'subtitle', 'short_description', 'description', 'photo', 'photo_alt'];

	protected $table = 'about_us';

}
