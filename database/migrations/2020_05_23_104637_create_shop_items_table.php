<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateShopItemsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('shop_items', function (Blueprint $table) {
			$table->id();
			$table->text('title')->nullable();
			$table->text('subtitle')->nullable();
			$table->text('description')->nullable();
			$table->text('details')->nullable();
			$table->bigInteger('category_id')->unsigned();
			$table->bigInteger('product_id')->unsigned();
			$table->integer('price')->nullable();
			$table->integer('amount')->nullable();
			$table->text('brand')->nullable();
			$table->integer('opinion')->nullable();
			$table->text('color')->nullable();
			$table->timestamps();

		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('shop_items');
	}
}
