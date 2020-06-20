<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlayersTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('players', function (Blueprint $table) {
			$table->id();
			$table->text('first_name');
			$table->text('last_name');
			$table->text('email');
			$table->text('league');
			$table->text('subtitle');
			$table->text('description');
			$table->text('photo');
			$table->text('photo_alt');
			$table->text('banner_photo');
			$table->text('banner_photo_alt');
			$table->bigInteger('user_id')->unsigned();
			$table->timestamps();

			$table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('players');
	}
}
