<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PriceListCategories extends Model
{
    protected $table = 'price_list_categories';

    protected $fillable = ['title', 'active'];
}
