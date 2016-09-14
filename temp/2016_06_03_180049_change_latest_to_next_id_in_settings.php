<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ChangeLatestToNextIdInSettings extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
		Schema::table('settings', function(Blueprint $table) {
			$table->renameColumn('latest_id', 'next_id');
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
			$table->renameColumn('next_id', 'last_id');
		});
    }
}
