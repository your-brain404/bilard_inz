<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBlogsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('blogs', function (Blueprint $table) {
			$table->id();
			$table->text('title')->nullable();
			$table->text('subtitle')->nullable();
			$table->text('short_description')->nullable();
			$table->text('description')->nullable();
			$table->text('photo')->nullable();
			$table->text('photo_alt')->nullable();
			$table->text('banner_photo')->nullable();
			$table->text('banner_photo_alt')->nullable();
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('blogs');
	}
}
