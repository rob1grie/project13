<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Settings extends Model
{
	protected $table = 'settings';
	
	protected $hidden = [];
	
	public static function getNextId() {
		$nextId = 1;
		
		if (\Setting::has('next_id')) {
			$nextId = \Setting::get('next_id');
		}
		
		\Setting::set('next_id', $nextId + 1);
		
	}

}
