<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShopItemColors extends Model
{
    protected $table = 'shop_item_colors';

    protected $fillable = ['title', 'active'];
}
