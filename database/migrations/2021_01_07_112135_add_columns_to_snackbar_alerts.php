<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsToSnackbarAlerts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('snackbar_alerts', function (Blueprint $table) {
            $table->text('validate')->nullable();
            $table->text('non_activated_account')->nullable();
            $table->text('blocked_user')->nullable();
            $table->text('user_exist')->nullable();
            $table->text('mail_success')->nullable();
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
            $table->dropColumn('validate');
            $table->dropColumn('non_activated_account');
            $table->dropColumn('blocked_user');
            $table->dropColumn('user_exist');
            $table->dropColumn('mail_success');
        });
    }
}
