<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShopProducts extends Model
{
    protected $guarded = ['id'];

    public function category() {
    	return $this->belongsTo('App\ShopCategories');
    }

    public function color() {
    	return $this->belongsTo('App\ShopItemColors');
    }

}
