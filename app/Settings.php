<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Settings extends Model
{
	protected $table = 'settings';
	
	protected $hidden = [];
	
	public static function getNextId() {
		if (!($setting = Settings::find(1))) {
			$setting = new Settings;
		}
		
		++$setting->next_user_id;

		$setting->save();
		
		return $setting->next_user_id;
	}

}
