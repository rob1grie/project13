<?php

namespace App\Commands;

use App\Commands\Command;
use App\Organization;

class StoreOrganizationCommand extends Command {
	public $name;
	public $address1;
	public $address2;
	public $city;
	public $state;
	public $zipcode;
	public $database_file;
	
	public function __construct($name, $address1, $address2, $city, $state, $zipcode, $database_file) {
		$this->name = $name;
		$this->address1 = $address1;
		$this->address2 = $address2;
		$this->city = $city;
		$this->state = $state;
		$this->zipcode = $zipcode;
		$this->database_file = $database_file;
	}
	
	public function handle() {
		return Organization::create([
			'name' => $this->name,
			'address1' => $this->address1,
			'address2' => $this->address2,
			'city' => $this->city,
			'state' => $this->state,
			'zipcode' => $this->zipcode,
			'database_file' => $this->database_file
		]);
	}
}