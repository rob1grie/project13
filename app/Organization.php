<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Organization extends Model
{
    protected $table = 'organizations';
	
	protected $fillable = ['name', 'address1', 'address2', 'city', 'state', 'zipcode', 'database_file'];
	
	protected $hidden = [];
	
}
