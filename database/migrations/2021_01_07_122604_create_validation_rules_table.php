<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateValidationRulesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('validation_rules', function (Blueprint $table) {
            $table->id();
            $table->text('title')->nullable();
            $table->text('required')->nullable();
            $table->text('email')->nullable();
            $table->text('password_length')->nullable();
            $table->text('file_size')->nullable();
            $table->text('password_confirm')->nullable();
            $table->text('reservation_min_time')->nullable();
            $table->text('reservation_exist')->nullable();
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
        Schema::dropIfExists('validation_rules');
    }
}
