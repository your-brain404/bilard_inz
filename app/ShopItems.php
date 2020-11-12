<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShopItems extends Model
{
    protected $table = 'shop_items';

    protected $fillable = ['product_id', 'title', 'subtitle', 'description', 'price', 'amount', 'discount', 'active', 'color_id', 'photo', 'photo_id'];
}
