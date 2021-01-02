<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCalendarDescriptionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('calendar_descriptions', function (Blueprint $table) {
            $table->id();
            $table->text('title')->nullable();
            $table->text('legend')->nullable();
            $table->text('unconfirmed')->nullable();
            $table->text('type')->nullable();
            $table->text('day_format')->nullable();
            $table->text('month')->nullable();
            $table->text('week')->nullable();
            $table->text('day')->nullable();
            $table->text('four_days')->nullable();
            $table->text('format1')->nullable();
            $table->text('format1_pattern')->nullable();
            $table->text('format2')->nullable();
            $table->text('format2_pattern')->nullable();
            $table->text('format3')->nullable();
            $table->text('format3_pattern')->nullable();
            $table->text('format4')->nullable();
            $table->text('format4_pattern')->nullable();
            $table->text('monday')->nullable();
            $table->text('tuesday')->nullable();
            $table->text('wednesday')->nullable();
            $table->text('thursday')->nullable();
            $table->text('friday')->nullable();
            $table->text('saturday')->nullable();
            $table->text('sunday')->nullable();
            $table->text('previous_icon')->nullable();
            $table->text('next_icon')->nullable();
            $table->text('reservation_icon')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('calendar_descriptions');
    }
}
