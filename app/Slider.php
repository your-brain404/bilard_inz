<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Http\Traits\ModelTrait;

class Slider extends Model {

	use ModelTrait;

	protected $table = 'slider';

	protected $fillable = ['title', 'subtitle', 'photo', 'photo_alt', 'active'];

	
}
