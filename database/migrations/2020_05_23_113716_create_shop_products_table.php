<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateShopProductsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('shop_products', function (Blueprint $table) {
			$table->id();
			$table->text('title');
			$table->text('subtitle');
			$table->text('description');
			$table->text('photo');
			$table->text('photo_alt');
			$table->bigInteger('category_id')->unsigned();
			$table->timestamps();

			$table->foreign('category_id')->references('id')->on('shop_categories')->onDelete('cascade');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('shop_products');
	}
}
