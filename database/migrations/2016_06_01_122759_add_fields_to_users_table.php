<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFieldsToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //	Expand users table to include all contact info
		Schema::table('users', function(Blueprint $table) {
			$table->integer('role_id')->unsigned();
			$table->foreign('role_id')->references('id')->on('roles');
			
			$table->renameColumn('name', 'username');
			
			$table->string('first_name', 32);
			$table->string('last_name', 32);
			$table->string('phone', 16);
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
			$table->dropColumn('phone');
			$table->dropColumn('last_name');
			$table->dropColumn('first_name');

			$table->renameColumn('username', 'name');

			$table->dropForeign(['role_id']);
			$table->dropColumn('role_id');
			
		});
    }
}
