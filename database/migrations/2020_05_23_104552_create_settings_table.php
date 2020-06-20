<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSettingsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('settings', function (Blueprint $table) {
			$table->id();
			$table->text('rodo_1');
			$table->text('rodo_2');
			$table->text('recaptcha_secret_token');
			$table->text('recaptcha_site_token');
			$table->text('meta_title');
			$table->text('meta_description');
			$table->text('meta_keywords');
			$table->text('privace_policy');
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('settings');
	}
}
