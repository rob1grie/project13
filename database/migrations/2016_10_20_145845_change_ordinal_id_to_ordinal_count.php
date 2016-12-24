<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ChangeOrdinalIdToOrdinalCount extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::table('project13s', function ($table) {
			$table->renameColumn('ordinal_id', 'ordinal_count');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::table('project13s', function ($table) {
			$table->renameColumn('ordinal_count', 'ordinal_id');
		});
	}

}
