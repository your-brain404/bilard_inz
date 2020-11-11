<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShopProducts extends Model
{
    protected $table = 'shop_products';

    protected $fillable = ['active', 'title', 'subtitle', 'description', 'photo', 'photo_alt', 'category_id'];
}
