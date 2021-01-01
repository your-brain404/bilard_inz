<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class EditNewsDescriptions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('news_descriptions', function (Blueprint $table) {
            $table->text('filter_category')->nullable();
            $table->renameColumn('filter', 'filter_tag');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('news_descriptions', function (Blueprint $table) {
            $table->dropColumn('filter_category');
            $table->renameColumn('filter_tag', 'filter');
        });
    }
}
