<?php

namespace App;

use Illuminate\Foundation\Auth\Member as Authenticatable;

class Member extends Authenticatable
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'membername', 'email', 'password', 'first_name', 'last_name', 'role_id', 'phone', 'organization_id',
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
	
	public function project13() {
		return $this->belongsTo('App\Project13');
	}
	
	public function getMemberId() {
		// Returns the numeric portion of the membername
		$memberId = 0;
		preg_match_all('!\d+!', $this->membername, $memberId);
		
		return $memberId[0][1];
	}
}
