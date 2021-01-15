<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShopOrders extends Model
{
    protected $guarded = ['id'];

    public function products() {
    	return $this->hasMany('App\OrderedProducts');
    }
}
