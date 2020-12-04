<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateShopOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('shop_orders', function (Blueprint $table) {
            $table->id();
            $table->boolean('paid')->nullable();
            $table->float('sum')->nullable();

            $table->text('main_name')->nullable();
            $table->text('main_phone')->nullable();
            $table->text('main_street')->nullable();
            $table->text('main_house_number')->nullable();
            $table->text('main_flat_number')->nullable();
            $table->text('main_zip_code')->nullable();
            $table->text('main_message')->nullable();

            $table->text('second_name')->nullable();
            $table->text('second_phone')->nullable();
            $table->text('second_street')->nullable();
            $table->text('second_house_number')->nullable();
            $table->text('second_flat_number')->nullable();
            $table->text('second_zip_code')->nullable();
            $table->text('second_message')->nullable();

            $table->text('delivery')->nullable();
            $table->text('payment')->nullable();
            
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
        Schema::dropIfExists('shop_orders');
    }
}
