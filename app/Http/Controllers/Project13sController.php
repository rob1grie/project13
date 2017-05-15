<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Project13;
use App\User;
use App\Organization;
use App\Role;
use Illuminate\Support\Facades\DB;

class Project13sController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index() {
		$project13s = Project13::with(['organization' => function ($query) {
						$query->orderBy('name');
					}])->get();
//		$project13s = Project13::orderBy('organization')
//				->get();
		return view('project13/index', compact('project13s'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create() {
//		$organizations = Organization::pluck('name', 'id')->sortBy('name');
		$organizations = Organization::pluck('name', 'id')->sort(function($a, $b) {
			if ($a === $b) {
				return 0;
			}
			return ($a > $b) ? 1 : -1;
		});
		$organizations->prepend('[Select the Organization]', 0);

		/*
		 * $collection->sort(function ($a, $b) {
		  9         $a = $a->year;
		  10         $b = $b->year;
		  11         if ($a === $b) {
		  12             return 0;
		  13         }
		  14         return ($a > $b) ? 1 : -1;
		  15     });
		 */

		return view('project13/create', compact('organizations'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request) {
		$users = $this->getProject13Users($request);

		// Get the selected Organization
		$orgId = $request->input('organization');

		// Start transaction
		DB::transaction(function() use ($users, $orgId) {

			$project13Id = $this->saveProject13($orgId);

			$this->updateProject13Users($users, $project13Id);
		});
		if ($request->input('org_p13')) {
			return redirect()->action('OrganizationsController@show', ['id' => $orgId])->with('message', 'Project 13 Added');
		}
		else {
			return \Redirect::route('project13s.index')->with('message', 'Project 13 Added');
		}
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id) {
		// Show Project13 details
		$p13 = Project13::find($id);
		$users = $p13->users;
		return view('project13/show', compact('p13', 'users'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id) {
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id) {
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id) {
		//
	}

	public function addOrgProject13($id) {

		$organization = Organization::find($id);
		$users = Project13sController::buildUsersSelect(
						User::select(DB::raw('concat(last_name, \', \', first_name) as name, id'))
								->where('organization_id', '=', $id)
								->where('project13_id', '=', NULL)
								->orderBy('name', 'asc')
								->get()
		);

		return view('organization/create-p13', compact('organization', 'users'));
	}

	protected function buildUsersSelect($users) {
		// Build an array of name, id elements
		$array = array();
		$array[] = ['id' => 0, 'name' => '[Select]'];
		foreach ($users as $user) {
			$array[] = ['id' => $user->id, 'name' => $user->name];
		}
		return $array;
	}

	protected function getProject13Users($request) {
		// Build collection of Users with their Role and blue_hat_id
		$allInputs = $request->all();

		$keys = array_keys($allInputs);

		$collectedUsers = [];
		$roleId = '';
		$blueHatId = 0;
		$count = 0;

		// Build array of Users
		foreach ($keys as $key) {
			// Skip this iteration if $key's value is 0 (no user selected)
			if (intval($allInputs[$key]) === 0) {
				continue;
			}

			// Only use $key if it contains 'hat'
			if (strpos($key, 'white_hat') !== FALSE) {
				$roleId = Role::getRoleId('White Hat');
				$blueHatId = 0;
			}
			else if (strpos($key, 'blue_hat') !== FALSE) {
				$roleId = Role::getRoleId('Blue Hat');
				$blueHatId = substr($key, -1, 1);
			}
			else if (strpos($key, 'yellow_hat') !== FALSE) {
				$roleId = Role::getRoleId('Yellow Hat');
				// Blue Hat ID is yellow_hat_1-1
				$blueHatId = substr($key, -3, 1);
			}
			else {
				$roleId = 0;
			}

			if (\strpos($key, 'hat') !== \FALSE) {
				$user = User::find($allInputs[$key]);
				$user->blue_hat_id = $blueHatId;
				$user->role_id = $roleId;
				$collectedUsers[$count++] = $user;
			}
		}

		return $collectedUsers;
	}

	protected function saveProject13($orgId) {
		// Save the Project13
		$project13Id = 0;

		$project13 = new Project13();
		$project13->organization_id = $orgId;
		$project13->ordinal_count = \App\Settings::getNextProject13Id();

		if ($project13->save()) {
			$project13Id = $project13->getProject13Id();
		}

		return $project13Id;
	}

	protected function updateProject13Users($users, $project13Id) {
		// Update users for this Project13
		foreach ($users as $user) {
			$user->project13_id = $project13Id;
			$user->update();
		}
	}

}
