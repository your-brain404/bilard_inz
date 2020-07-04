<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContactTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('contact', function (Blueprint $table) {
			$table->id();
			$table->text('email_1')->nullable();
			$table->text('email_2')->nullable();
			$table->text('phone_1')->nullable();
			$table->text('phone_2')->nullable();
			$table->text('zip_code')->nullable();
			$table->text('city')->nullable();
			$table->text('address')->nullable();
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('contact');
	}
}
