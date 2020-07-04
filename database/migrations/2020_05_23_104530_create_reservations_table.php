<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReservationsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('reservations', function (Blueprint $table) {
			$table->id();
			$table->dateTime('entry')->nullable();
			$table->dateTime('leave')->nullable();
			$table->integer('earnings')->nullable();
			$table->boolean('is_paid')->nullable();
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('reservations');
	}
}
