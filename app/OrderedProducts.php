<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderedProducts extends Model
{
    protected $table = 'ordered_products';

    protected $fillable = ['shop_order_id', 'item_id', 'product_id'];
}
