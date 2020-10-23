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
			$table->text('first_name')->nullable();
			$table->text('last_name')->nullable();
			$table->text('league')->nullable();
			$table->text('subtitle')->nullable();
			$table->text('description')->nullable();
			$table->text('photo')->nullable();
			$table->text('photo_alt')->nullable();
			$table->timestamps();

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
