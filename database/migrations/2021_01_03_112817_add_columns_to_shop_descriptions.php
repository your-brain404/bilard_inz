<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsToShopDescriptions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('shop_descriptions', function (Blueprint $table) {
            $table->text('product_categories')->nullable();
            $table->text('all')->nullable();
            $table->text('price_sort_up')->nullable();
            $table->text('price_sort_down')->nullable();
            $table->text('title_sort_up')->nullable();
            $table->text('title_sort_down')->nullable();
            $table->text('date_sort_up')->nullable();
            $table->text('date_sort_down')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('shop_descriptions', function (Blueprint $table) {
            $table->dropColumn('product_categories');
            $table->dropColumn('all');
            $table->dropColumn('price_sort_up');
            $table->dropColumn('price_sort_down');
            $table->dropColumn('title_sort_up');
            $table->dropColumn('title_sort_down');
            $table->dropColumn('date_sort_up');
            $table->dropColumn('date_sort_down');
        });
    }
}
