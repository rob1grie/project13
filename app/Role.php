<?php

namespace App;

use Laratrust\LaratrustRole;

class Role extends LaratrustRole
{
	public function users() {
		return $this->hasMany('App\User');
	}
	
	public static function getRoleId($role) {
		var_dump($role);
		$roles = Role::where('display_name', $role)->get();
		$roleId = 0;
		
		foreach($roles as $r) {
			$roleId = $r->id;
		}
		
		return $roleId;
	}
}
