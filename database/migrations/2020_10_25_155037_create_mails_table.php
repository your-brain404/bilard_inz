<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mails', function (Blueprint $table) {
            $table->id();
            $table->boolean('answer')->default(false);
            $table->text('name');
            $table->text('email');
            $table->text('subject');
            $table->integer('phone');
            $table->text('message');
            $table->text('attachment');
            $table->boolean('rodo1')->default(false);
            $table->boolean('rodo2')->default(false);
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
        Schema::dropIfExists('mails');
    }
}
