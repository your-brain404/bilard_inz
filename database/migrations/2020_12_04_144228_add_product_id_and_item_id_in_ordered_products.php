<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddProductIdAndItemIdInOrderedProducts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('ordered_products', function (Blueprint $table) {
            $table->bigInteger('product_id')->unsigned();
            $table->foreign('product_id')->references('id')->on('shop_products')->onDelete('cascade');
            $table->bigInteger('item_id')->unsigned();
            $table->foreign('item_id')->references('id')->on('shop_items')->onDelete('cascade');
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
            $table->dropColumn('product_id');
            $table->dropColumn('item_id');
        });
    }
}
