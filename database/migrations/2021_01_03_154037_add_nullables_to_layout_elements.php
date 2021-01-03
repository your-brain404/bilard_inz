<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddNullablesToLayoutElements extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('layout_elements', function (Blueprint $table) {
            $table->text('title')->nullable()->change();
            $table->text('eight_ball')->nullable()->change();
            $table->text('eight_ball_alt')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('layout_elements', function (Blueprint $table) {
            $table->text('title')->change();
            $table->text('eight_ball')->change();
            $table->text('eight_ball_alt')->change();
        });
    }
}
