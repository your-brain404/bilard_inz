<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $table = 'news';

    public function tags() {
    	return $this->hasMany('App\NewsTags');
    }
}
