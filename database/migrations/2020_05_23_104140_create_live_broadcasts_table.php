->nullable()<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLiveBroadcastsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('live_broadcasts', function (Blueprint $table) {
			$table->id();
			$table->text('title')->nullable();
			$table->text('subtitle')->nullable();
			$table->text('link')->nullable();
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('live_broadcasts');
	}
}
