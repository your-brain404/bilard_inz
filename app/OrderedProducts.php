<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderedProducts extends Model
{
    protected $guarded = ['id'];

    public function shopProducts()
    {
        return $this->belongsTo('App\ShopProducts', 'product_id');
    }

    public function shopItems()
    {
        return $this->belongsTo('App\ShopItems', 'item_id');
    }
}
