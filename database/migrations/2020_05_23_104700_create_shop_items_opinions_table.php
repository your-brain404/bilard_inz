<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateShopItemsOpinionsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('shop_items_opinions', function (Blueprint $table) {
			$table->id();
			$table->text('username');
			$table->integer('stars');
			$table->text('opinion');
			$table->bigInteger('item_id')->unsigned();
			$table->bigInteger('user_id')->unsigned();
			$table->timestamps();

			$table->foreign('item_id')->references('id')->on('shop_items')->onDelete('cascade');
			$table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('shop_items_opinions');
	}
}
