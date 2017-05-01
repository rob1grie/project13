<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Settings extends Model {

	protected $table = 'settings';
	protected $hidden = [];

	public static function getNextId() {
		if (!($setting = Settings::find(1))) {
			$setting = initSettings();
		}

		return $setting->next_user_id;
	}

	public static function setNextId($currentId) {
		// Assumes that a record exists and was set in getNextId()
		// currentId should be incremented and saved into next_user_id
		$setting = Settings::find(1);

		$setting->next_user_id = $currentId + 1;
		$setting->save();
	}

	public static function getNextProject13Id() {
		if (!($setting = Settings::find(1))) {
			$setting = initSetting();
		}

		return $setting->next_project13_id;
	}
	
	public static function setNextProject13Id() {
		$setting = Settings::find(1);
		
		$setting->next_project13_id++;
		$setting->save();
	}

	protected static function initSettings() {
		$setting = new Settings;
		$setting->next_user_id = 1;
		$setting->next_project13_id = 1;
		$setting->save();
		
		return $setting;
	}

}
