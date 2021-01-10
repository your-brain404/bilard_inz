<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddPasswordDataToDrawerDescriptions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('drawer_descriptions', function (Blueprint $table) {
            $table->text('change_password')->nullable();
            $table->text('password')->nullable();
            $table->text('new_password')->nullable();
            $table->text('new_password_confirm')->nullable();
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
            $table->dropColumn('change_password');
            $table->dropColumn('password');
            $table->dropColumn('new_password');
            $table->dropColumn('new_password_confirm');
        });
    }
}
