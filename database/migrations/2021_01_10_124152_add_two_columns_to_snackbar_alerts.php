<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTwoColumnsToSnackbarAlerts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('snackbar_alerts', function (Blueprint $table) {
            $table->text('user_does_not_exist')->nullable();
            $table->text('password_reminder_success')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('snackbar_alerts', function (Blueprint $table) {
            $table->dropColumn('user_does_not_exist');
            $table->dropColumn('password_reminder_success');
        });
    }
}
