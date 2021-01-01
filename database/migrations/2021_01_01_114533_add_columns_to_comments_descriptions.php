<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsToCommentsDescriptions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('comments_descriptions', function (Blueprint $table) {
            $table->text('write')->nullable();
            $table->text('button_icon')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('comments_descriptions', function (Blueprint $table) {
            $table->dropColumn('write');
            $table->dropColumn('button_icon');
        });
    }
}
