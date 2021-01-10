<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddChangePasswordSuccessToSnackbarAlerts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('snackbar_alerts', function (Blueprint $table) {
            $table->text('change_password_success')->nullable();
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
            $table->dropColumn('change_password_success');
        });
    }
}
