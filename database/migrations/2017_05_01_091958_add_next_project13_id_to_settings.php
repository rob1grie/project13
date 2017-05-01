<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddNextProject13IdToSettings extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('settings', function(Blueprint $table) {
			$table->integer('next_project13_id')->unsigned();
		});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('settings', function(Blueprint $table) {
			$table->dropColumn('next_project13_id');
		});
    }
}
