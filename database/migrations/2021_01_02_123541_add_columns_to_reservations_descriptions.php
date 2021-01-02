<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsToReservationsDescriptions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('reservations_descriptions', function (Blueprint $table) {
            $table->text('date_icon')->nullable();
            $table->text('entry_icon')->nullable();
            $table->text('leave_icon')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('reservations_descriptions', function (Blueprint $table) {
            $table->dropColumn('date_icon');
            $table->dropColumn('entry_icon');
            $table->dropColumn('leave_icon');
        });
    }
}
