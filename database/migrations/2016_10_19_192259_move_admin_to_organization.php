<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class MoveAdminToOrganization extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('organizations', function(Blueprint $table) {
			$table->integer('admin_id')->unsigned()->nullable();
		});
		
		Schema::table('project13s', function(Blueprint $table) {
			$table->dropColumn('org_admin_id');
		});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
		Schema::table('organizations', function(Blueprint $table) {
			$table->dropColumn('admin_id');
		});
		
        Schema::table('project13s', function(Blueprint $table) {
			$table->integer('org_admin_id')->unsigned()->nullable();
		});
    }
}
