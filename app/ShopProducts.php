<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShopProducts extends Model
{
    protected $table = 'shop_products';

    protected $fillable = ['active', 'title', 'subtitle', 'description', 'photo', 'photo_alt', 'category_id', 'price', 'discount', 'color_id', 'amount'];

    public function category() {
    	return $this->belongsTo('App\ShopCategories');
    }

    public function color() {
    	return $this->belongsTo('App\ShopItemColors');
    }

}
