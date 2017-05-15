<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Settings extends Model {

	protected $table = 'settings';
	protected $hidden = [];

	// Maintain a running count for anonymous user IDs
	public static function getNextId() {
		if (!($setting = Settings::find(1))) {
			$setting = Settings::initSettings();
		}

		// Save the current next_user_id
		$nextId = $setting->next_user_id;
		
		// Increment the current value and save it back to the settings table
		$setting->next_user_id = $nextId + 1;
		$setting->save();
		
		return $nextId;
	}

	public static function getNextProject13Id() {
		if (!($setting = Settings::find(1))) {
			$setting = Settings::initSettings();
		}
		
		// Save the current next_project13_id
		$nextId = $setting->next_project13_id;
		
		// Increment and save the current value
		$setting->next_project13_id = $nextId + 1;
		$setting->save();

		return $nextId;
	}
	
	protected static function initSettings() {
		$setting = new Settings;
		$setting->next_user_id = 1;
		$setting->next_project13_id = 1;
		$setting->save();
		
		return $setting;
	}

}
