<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddNullablesToOrderedProducts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('ordered_products', function (Blueprint $table) {
            $table->bigInteger('product_id')->nullable()->unsigned()->change();
            $table->bigInteger('item_id')->nullable()->unsigned()->change();
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
            $table->bigInteger('product_id')->change();
            $table->bigInteger('item_id')->change();
        });
    }
}
