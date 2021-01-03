<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCartDescriptionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cart_descriptions', function (Blueprint $table) {
            $table->id();
            $table->text('title')->nullable();
            $table->text('cart_icon')->nullable();
            $table->text('empty')->nullable();
            $table->text('delivery')->nullable();
            $table->text('sum')->nullable();
            $table->text('go_to_cart')->nullable();
            $table->text('step_1')->nullable();
            $table->text('step_2')->nullable();
            $table->text('step_3')->nullable();
            $table->text('step_4')->nullable();
            $table->text('next')->nullable();
            $table->text('back')->nullable();
            $table->text('realize')->nullable();
            $table->text('delivery_type')->nullable();
            $table->text('payment_type')->nullable();
            $table->text('traditional')->nullable();
            $table->text('personal')->nullable();
            $table->text('name')->nullable();
            $table->text('email')->nullable();
            $table->text('phone')->nullable();
            $table->text('street')->nullable();
            $table->text('house_number')->nullable();
            $table->text('flat_number')->nullable();
            $table->text('zip_code')->nullable();
            $table->text('city')->nullable();
            $table->text('message')->nullable();
            $table->text('other_address')->nullable();
            $table->text('yes')->nullable();
            $table->text('no')->nullable();
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
        Schema::dropIfExists('cart_descriptions');
    }
}
