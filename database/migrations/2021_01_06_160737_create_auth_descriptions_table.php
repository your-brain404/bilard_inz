<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAuthDescriptionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('auth_descriptions', function (Blueprint $table) {
            $table->id();
            $table->text('title')->nullable();
            $table->text('register_title')->nullable();
            $table->text('shop_regulations')->nullable();
            $table->text('name')->nullable();
            $table->text('email')->nullable();
            $table->text('password')->nullable();
            $table->text('password_confirm')->nullable();
            $table->text('close_icon')->nullable();
            $table->text('download')->nullable();
            $table->text('privace_policy')->nullable();
            $table->text('make_account')->nullable();
            $table->text('or')->nullable();
            $table->text('fb_button_name')->nullable();
            $table->text('fb_icon')->nullable();
            $table->text('login_title')->nullable();
            $table->text('bg_register_photo')->nullable();
            $table->text('bg_register_photo_alt')->nullable();
            $table->text('bg_login_photo')->nullable();
            $table->text('bg_login_photo_alt')->nullable();
            $table->text('register_now')->nullable();
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
        Schema::dropIfExists('auth_descriptions');
    }
}
