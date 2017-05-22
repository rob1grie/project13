<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
//        DB::statement('ALTER TABLE roles AUTO_INCREMENT=0');
//        DB::table('roles')->insert([
//			['name' => 'none', 'display_name' => '[None]'],
//			['name' => 'district_admin', 'display_name' => 'District Administrator'],
//			['name' => 'org_admin', 'display_name' => 'Organization Administrator'],
//			['name' => 'black_hat', 'display_name' => 'Black Hat'],
//			['name' => 'white_hat', 'display_name' => 'White Hat'],
//			['name' => 'blue_hat', 'display_name' => 'Blue Hat'],
//			['name' => 'yellow_hat', 'display_name' => 'Yellow Hat']
//		]);
//		$this->call(OrganizationsTableSeeder::class);
		$this->call(MembersTableSeeder::class);
//		$this->call(PermissionsTableSeeder::class);
    }
}
