<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderedProducts extends Model
{
    protected $guarded = ['id'];

    public function shopProduct()
    {
        return $this->belongsTo('App\ShopProducts', 'product_id');
    }

    public function shopItem()
    {
        return $this->belongsTo('App\ShopItems', 'item_id');
    }
}
