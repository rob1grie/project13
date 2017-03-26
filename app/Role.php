<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $table = 'roles';
	
	protected $fillable = ['role'];
	
	protected $hidden = [];
	
	public function members() {
		return $this->hasMany('App\Member');
	}
	
	public static function getRoleId($role) {
		$roles = Role::where('role', $role)->get();
		$roleId = 0;
		
		foreach($roles as $r) {
			$roleId = $r->id;
		}
		
		return $roleId;
	}

}