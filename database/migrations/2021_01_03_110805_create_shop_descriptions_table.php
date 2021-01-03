<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateShopDescriptionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('shop_descriptions', function (Blueprint $table) {
            $table->id();
            $table->text('title')->nullable();
            $table->text('category')->nullable();
            $table->text('price')->nullable();
            $table->text('currency')->nullable();
            $table->text('discount')->nullable();
            $table->text('amount')->nullable();
            $table->text('minus_icon')->nullable();
            $table->text('plus_icon')->nullable();
            $table->text('max_amount')->nullable();
            $table->text('add_to_cart')->nullable();
            $table->text('add_to_cart_icon')->nullable();
            $table->text('buy_now_icon')->nullable();
            $table->text('buy_now')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('shop_descriptions');
    }
}
