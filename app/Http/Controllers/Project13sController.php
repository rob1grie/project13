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
//		$organizations = Organization::pluck('name', 'id')->sortBy('name');
		$organizations = Organization::pluck('name', 'id')->sort(function($a, $b) {
			if ($a === $b) {
				return 0;
			}
			return ($a > $b) ? 1 : -1;
		});
		$organizations->prepend('[Select]', 0);
		
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

		return view('organization/create-p13', compact('organization', 'users'));
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
