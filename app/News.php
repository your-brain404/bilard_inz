<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $table = 'news';

    protected $fillable = ['title', 'category', 'button_name', 'short_description', 'description', 'photo', 'photo_alt', 'home_page', 'active', 'meta_description'];

    public function tags() {
    	return $this->hasMany('App\NewsTags');
    }
}
