<?php namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Project13;
use App\User;
use App\Organization;
use App\Http\Requests;
use Illuminate\Support\Facades\DB;

class Project13sController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index() {
		$project13s = Project13::all();
		return view('project13/index', compact('project13s'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create() {
		$organizations = Organization::lists('name', 'id')->sortBy('name');
		$organizations->prepend('[Select]', 0);

		$users = User::lists('last_name', 'id');
		$users->prepend('[Select]', 0);

		return view('project13/create', compact('organizations', 'users'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request) {
		//
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id) {
		//
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
		$users = User::select(DB::raw('concat(last_name, \', \', first_name) as name, id'))
				->where('organization_id', '=', $id)
				->where('project13_id', '=', NULL)
				->orderBy('name', 'asc')
				->get();
		$users = Project13sController::buildUsersSelect($users);

		return view('project13/create', compact('organization', 'users'));
	}

	protected function buildUsersSelect($users) {
		// Build an array of name, id elements
		$array = array();
		$array[0] = '[Select]';
		foreach ($users as $user) {
			$array[$user->id] = $user->name;
		}
		return $array;
	}

}
