<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class DeleteColumnsInCalendarDescriptions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('calendar_descriptions', function (Blueprint $table) {
            $table->dropColumn('format1');
            $table->dropColumn('format1_pattern');
            $table->dropColumn('format2');
            $table->dropColumn('format2_pattern');
            $table->dropColumn('format3');
            $table->dropColumn('format3_pattern');
            $table->dropColumn('format4');
            $table->dropColumn('format4_pattern');
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
            $table->text('format1')->nullable();
            $table->text('format1_pattern')->nullable();
            $table->text('format2')->nullable();
            $table->text('format2_pattern')->nullable();
            $table->text('format3')->nullable();
            $table->text('format3_pattern')->nullable();
            $table->text('format4')->nullable();
            $table->text('format4_pattern')->nullable();
        });
    }
}
