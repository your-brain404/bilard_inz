<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOffersTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('offers', function (Blueprint $table) {
			$table->id();
			$table->text('title');
			$table->text('subtitle');
			$table->text('short_description');
			$table->text('description');
			$table->text('photo');
			$table->text('photo_alt');
			$table->text('banner_photo');
			$table->text('banner_photo_alt');
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('offers');
	}
}
