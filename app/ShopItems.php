<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShopItems extends Model
{
    protected $guarded = ['id'];

    public function color() {
    	return $this->belongsTo('App\ShopItemColors');
    }
}
