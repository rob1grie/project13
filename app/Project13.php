<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Project13 extends Model {

	protected $fillable = ['organization_id', 'ordinal_id', 'org_admin_id'];
	protected $hidden = [];

	public function organization() {
		return $this->belongsTo('App\Organization', 'organization_id');
	}

	public function org_admin() {
		return $this->hasOne('App\User', 'org_admin_id');
	}
	
	public function users() {
		return $this->hasMany('App\User');
	}
	
}
