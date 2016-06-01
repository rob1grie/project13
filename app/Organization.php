<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Organization extends Model
{
    protected $table = 'organizations';
	
	protected $fillable = [
            'name', 'address1', 'address2', 'city', 'state', 'zipcode', 'database_file', 'phone_main', 'phone_alt'];
	
	protected $hidden = [];

	public function users() {
		return $this->hasMany('App\User');
	}
}
