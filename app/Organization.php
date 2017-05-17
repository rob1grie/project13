<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Organization extends Model
{
    protected $table = 'organizations';
	
	protected $fillable = [
            'name', 'address1', 'address2', 'city', 'state', 'zipcode', 'database_file', 'phone_main', 'phone_alt'];
	
	protected $hidden = [];

	public function members() {
		return $this->hasMany('App\Member');
	}
	
	public function membersSorted() {
		return $this->hasMany('App\Member')->orderBy('last_name')->orderBy('first_name');
	}
	
	public function project13s() {
		return $this->hasMany('App\Project13');
	}
}
