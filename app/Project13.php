<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Project13 extends Model {

    protected $fillable = ['organization_id', 'ordinal_id', 'org_admin_id'];
    protected $hidden = [];

    public function organization() {
        return $this->belongsTo('App\Organization', 'organization_id');
    }

    public function org_admin() {
        return $this->hasOne('App\Member', 'org_admin_id');
    }

    public function members() {
        return $this->hasMany('App\Member')->orderBy('blue_hat_id')->orderBy('role_id');
    }

    public function getProject13Id() {
        return $this->id;
    }

    public static function getNextOrdinalCount($orgId) {
        // Get the highest ordinal_count from project13s for this Orgamization and add 1 for next
        $nextOrdinal = Project13::where('organization_id', $orgId)->max('ordinal_count') + 1;

        return $nextOrdinal;
    }

}
