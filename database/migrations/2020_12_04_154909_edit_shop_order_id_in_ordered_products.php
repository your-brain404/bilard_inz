<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class EditShopOrderIdInOrderedProducts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('ordered_products', function (Blueprint $table) {
            $table->dropForeign(['shop_order_id']);
            $table->foreign('shop_order_id')->references('id')->on('shop_orders')->onDelete('cascade')->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('ordered_products', function (Blueprint $table) {
            $table->dropForeign(['shop_order_id']);
            $table->foreign('shop_order_id')->references('id')->on('ordered_products')->onDelete('cascade')->change();
        });
    }
}
