<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToItemsColors extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('items_colors', function (Blueprint $table) {
            $table->foreign('shop_item_id')->references('id')->on('shop_items')->onDelete('cascade');
            $table->foreign('shop_item_color_id')->references('id')->on('shop_items')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('items_colors', function (Blueprint $table) {
            $table->dropForeign(['shop_item_id']);
            $table->dropForeign(['shop_item_color_id']);
        });
    }
}
