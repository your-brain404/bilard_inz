<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToShopItems extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::table('shop_items', function (Blueprint $table) {
			$table->foreign('category_id')->references('id')->on('shop_categories')->onDelete('cascade');
			$table->foreign('product_id')->references('id')->on('shop_products')->onDelete('cascade');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::table('shop_items', function (Blueprint $table) {
			$table->dropForeign('category_id');
			$table->dropForeign('product_id');
		});
	}
}
