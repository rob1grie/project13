<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
	protected $table = 'settings';
	
    protected $fillable = ['next_id'];
	
	protected $hidden = [];
	
	public function getNextId() {
		$nextId = $this->next_id;
		$this->next_id++;
		$this->save();
		
		return $nextId;
	}

}
