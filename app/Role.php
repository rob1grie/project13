<?php

namespace App;

use Laratrust\LaratrustRole;

class Role extends LaratrustRole
{
	public function members() {
		return $this->hasMany('App\Member');
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
