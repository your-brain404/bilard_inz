<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShopOrders extends Model
{
    protected $table = 'shop_orders';

    protected $fillable = ['paid', 'sum', 'main_name','main_phone','main_street','main_house_number','main_flat_number','main_zip_code','main_message','second_name','second_phone','second_street','second_house_number','second_flat_number','second_zip_code','second_message','delivery','payment'];
}
