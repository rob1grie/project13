<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username', 'email', 'password', 'first_name', 'last_name', 'role_id', 'phone',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
	
	public function role(){
        return $this->belongsTo('App\Role');
    }
	
	public function organization() {
		return $this->belongsTo('App\Organization');
	}
	
	public function getUserId() {
		// Returns the numeric portion of the username
		$userId = 0;
		preg_match_all('!\d+!', $this->username, $userId);
		
		return $userId;
	}
}
