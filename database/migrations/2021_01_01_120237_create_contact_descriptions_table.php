<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContactDescriptionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contact_descriptions', function (Blueprint $table) {
            $table->id();
            $table->text('title')->nullable();
            $table->text('subtitle')->nullable();
            $table->text('name')->nullable();
            $table->text('email')->nullable();
            $table->text('phone')->nullable();
            $table->text('subject')->nullable();
            $table->text('message')->nullable();
            $table->text('files')->nullable();
            $table->text('button_name')->nullable();
            $table->text('phone_icon')->nullable();
            $table->text('email_icon')->nullable();
            $table->text('map_icon')->nullable();
            $table->text('account_icon')->nullable();
            $table->text('find_us')->nullable();
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
        Schema::dropIfExists('contact_descriptions');
    }
}
