<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTwoColumnsToAuthDescriptions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('auth_descriptions', function (Blueprint $table) {
            $table->text('password_reminder_title')->nullable();
            $table->text('password_reminder_send')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('auth_descriptions', function (Blueprint $table) {
            $table->dropColumn('password_reminder_title');
            $table->dropColumn('password_reminder_send');
        });
    }
}
