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

		// Return the current next_user_id
		return $setting->next_user_id;
	}
	
	// Receives the current Username, extracts the numeric component, incrementt it and saves it as the next User ID
	public static function saveNextId($username) {
		if (!($setting = Settings::find(1))) {
			$setting = Settings::initSettings();
		}
		
		$id = str_replace('p13man-', '', $username);
		
		$setting->next_user_id = $id + 1;
		$setting->save();
	}
	
	public static function getNextProject13Id() {
		if (!($setting = Settings::find(1))) {
			$setting = Settings::initSettings();
		}
		
		// Return the current next_project13_id
		return $setting->next_project13_id;
	}
	
	// Receives the current Project 13 ID, increments it and saves it as the next Project 13 ID
	public static function saveNextProject13Id($id) {
		if (!($setting = Settings::find(1))) {
			$setting = Settings::initSettings();
		}
		
		$setting->next_project13_id = $id + 1;
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
