<?php

use Illuminate\Database\Seeder;
use App\Member;

class MembersTableSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run() {
		$faker = Faker\Factory::create();

		for ($i = 0; $i < 14; $i++) {
			for ($j = 1; $j < 13; $j++) {
				$member = new Member;
				$member->membername = $faker->memberName;
				$member->password = $faker->password;
				$member->email = $faker->email;
				$member->first_name = $faker->firstNameMale;
				$member->last_name = $faker->lastName;
				$member->phone = $faker->phoneNumber;
				$member->role_id = 0;
				$member->organization_id = $j;
				
				$member->save();
			}
		}
	}

}
