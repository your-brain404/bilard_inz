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
			$table->text('title');
			$table->text('subtitle');
			$table->text('description');
			$table->text('details');
			$table->bigInteger('category_id')->unsigned();
			$table->bigInteger('product_id')->unsigned();
			$table->integer('price');
			$table->integer('amount');
			$table->text('brand');
			$table->integer('opinion');
			$table->text('color');
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
