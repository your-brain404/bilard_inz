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
			$table->text('email_1');
			$table->text('email_2');
			$table->text('phone_1');
			$table->text('phone_2');
			$table->text('zip_code');
			$table->text('city');
			$table->text('address');
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
