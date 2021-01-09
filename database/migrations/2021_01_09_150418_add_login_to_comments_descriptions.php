<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddLoginToCommentsDescriptions extends Migration {

    public function up() {
        Schema::table('comments_descriptions', function (Blueprint $table) {
            $table->text('login')->nullable();
        });
    }

    public function down() {
        Schema::table('comments_descriptions', function (Blueprint $table) {
            $table->dropColumn('login');
        });
    }
}