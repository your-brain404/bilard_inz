<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignToPriceList extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('price_list', function (Blueprint $table) {
            $table->bigInteger('price_list_category_id')->unsigned();
            $table->foreign('price_list_category_id')->references('id')->on('price_list_categories')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('price_list', function (Blueprint $table) {
            $table->dropForeign('price_list_category_id');
            $table->dropColumn('price_list_category_id');
        });
    }
}
