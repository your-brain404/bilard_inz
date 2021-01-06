<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDrawerDescriptionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('drawer_descriptions', function (Blueprint $table) {
            $table->id();
            $table->text('title')->nullable();
            $table->text('panel')->nullable();
            $table->text('panel_icon')->nullable();
            $table->text('account')->nullable();
            $table->text('account_icon')->nullable();
            $table->text('delete_photo')->nullable();
            $table->text('edit_account')->nullable();
            $table->text('accept')->nullable();
            $table->text('cancel')->nullable();
            $table->text('log_out')->nullable();
            $table->text('name')->nullable();
            $table->text('photo_text')->nullable();
            $table->text('placeholder')->nullable();
            $table->text('placeholder_alt')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('drawer_descriptions');
    }
}
