<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddNullablesToMails extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('mails', function (Blueprint $table) {
            $table->text('name')->nullable()->change();
            $table->text('email')->nullable()->change();
            $table->text('subject')->nullable()->change();
            $table->text('phone')->nullable()->change();
            $table->text('message')->nullable()->change();
            $table->text('answer')->nullable()->change();
            $table->text('rodo1')->nullable()->change();
            $table->text('rodo2')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('mails', function (Blueprint $table) {
            $table->text('name')->change();
            $table->text('email')->change();
            $table->text('subject')->change();
            $table->text('phone')->change();
            $table->text('message')->change();
            $table->text('answer')->change();
            $table->text('rodo1')->change();
            $table->text('rodo2')->change();
        });
    }
}
