<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateShopItemsTable extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('shop_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('product_id');
            $table->text('title')->nullable();
            $table->text('subtitle')->nullable();
            $table->text('description')->nullable();
            $table->integer('price')->nullable();
            $table->text('brand')->nullable();
            $table->integer('amount')->nullable();
            $table->timestamps();

            

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('shop_items');
    }
}
