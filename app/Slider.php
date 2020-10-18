<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model {
	protected $table = 'slider';

	protected $fillable = ['title', 'subtitle', 'photo', 'photo_alt', 'active'];
}
