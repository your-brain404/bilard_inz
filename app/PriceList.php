<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PriceList extends Model
{
    protected $table = 'price_list';

    protected $fillable = ['title', 'subtitle', 'price', 'price_list_category_id', 'active'];

    public function category() {
    	return $this->belongsTo('App\PriceListCategories', 'price_list_category_id');
    }
}
