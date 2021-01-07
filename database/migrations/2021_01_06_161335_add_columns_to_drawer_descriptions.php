<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsToDrawerDescriptions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('drawer_descriptions', function (Blueprint $table) {
            $table->text('login')->nullable();
            $table->text('login_icon')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('drawer_descriptions', function (Blueprint $table) {
            $table->dropColumn('login');
            $table->dropColumn('login_icon');
        });
    }
}
