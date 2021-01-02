<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUnconfirmedColorToCalendarDescriptions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('calendar_descriptions', function (Blueprint $table) {
            $table->text('unconfirmed_color')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('calendar_descriptions', function (Blueprint $table) {
            $table->dropColumn('unconfirmed_color');
        });
    }
}
