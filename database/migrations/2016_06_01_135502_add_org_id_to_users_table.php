<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddOrgIdToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
		Schema::table('users', function(Blueprint $table) {
			$table->integer('organization_id')->unsigned();
			$table->foreign('organization_id')->references('id')->on('organizations');
		});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
		Schema::table('users', function(Blueprint $table) {
			$table->dropForeign(['organization_id']);
			$table->dropColumn('organication_id');
		});
    }
}
