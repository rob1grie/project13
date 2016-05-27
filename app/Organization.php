<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Config;

class Organization extends Model
{
    protected $table = 'organizations';
	
	protected $fillable = [
            'name', 'address1', 'address2', 'city', 'state', 'zipcode', 'database_file', 'phone_main', 'phone_alt'];
	
	protected $hidden = [];
	
	public function inititalizeDatabase() {
		// Check that this Organization doesn't already have a database file
		$database_file = config('database.database_dir') . 'data' . $this->id . '.sqlite';
		
		if (!file_exists($database_file)) {
			if($file = fopen($database_file, "r")) {
				fclose($file);
			}
		}
	}


}
