<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Settings extends Model
{
	protected $table = 'settings';
	
	protected $hidden = [];
	
	public static function getNextId() {
		if (!($setting = Settings::find(1))) {
			// If no settings record currently exists, initialize and save one
			$setting = new Settings;
			$setting->next_member_id = 1;
			$setting->save();
		}
		
		return $setting->next_member_id;
	}
	
	public static function setNextId($currentId) {
		// Assumes that a record exists and was set in getNextId()
		// currentId should be incremented and saved into next_member_id
		$setting = Settings::find(1);
		
		$setting->next_member_id = $currentId + 1;
		$setting->save();
	}

}
