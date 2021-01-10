<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddBgPasswordReminderPhotoToAuthDescriptions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('auth_descriptions', function (Blueprint $table) {
            $table->text('bg_password_reminder_photo')->nullable();
            $table->text('bg_password_reminder_photo_alt')->nullable();
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
            $table->dropColumn('bg_password_reminder_photo');
            $table->dropColumn('bg_password_reminder_photo_alt');
        });
    }
}
