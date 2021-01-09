<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddActivatedAccountSuccessToSnackbarAlerts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('snackbar_alerts', function (Blueprint $table) {
            $table->text('activated_account_success')->nullable();
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
            $table->dropColumn('activated_account_success');
        });
    }
}
