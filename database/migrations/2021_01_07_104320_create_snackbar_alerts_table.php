<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSnackbarAlertsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('snackbar_alerts', function (Blueprint $table) {
            $table->id();
            $table->text('error')->nullable();
            $table->text('delete_comment')->nullable();
            $table->text('add_comment')->nullable();
            $table->text('mail_error')->nullable();
            $table->text('attachments_error')->nullable();
            $table->text('recaptcha_error')->nullable();
            $table->text('login_require')->nullable();
            $table->text('reservation_to_accept')->nullable();
            $table->text('add_to_cart')->nullable();
            $table->text('shop_items_error')->nullable();
            $table->text('photo_error')->nullable();
            $table->text('edit_account_success')->nullable();
            $table->text('delete_from_cart_question')->nullable();
            $table->text('order_success')->nullable();
            $table->text('login_success')->nullable();
            $table->text('register_success')->nullable();
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
        Schema::dropIfExists('snackbar_alerts');
    }
}
