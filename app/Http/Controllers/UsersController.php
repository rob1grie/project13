<?php namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use App\User;
use App\Role;
use App\Organization;

class UsersController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index() {
		$users = User::all();
		return view('user/index', compact('users'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create() {
		$roles = Role::lists('role', 'id');
		$roles->prepend('[Select user role]', 0);

		$organizations = Organization::lists('name', 'id')->sortBy('name');
		$organizations->prepend('[Select user\'s organization]', 0);

		return view('user/create', compact('roles', 'organizations'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request) {

		$user = new User();
		$user->username = $request->input('username');
		$user->password = $request->input('password');
		$user->first_name = $request->input('first_name');
		$user->last_name = $request->input('last_name');
		$user->email = $request->input('email');
		$user->role_id = $request->input('role');
		$user->organization_id = $request->input('organization');
		$user->save();

		return \Redirect::route('users.index')->with('message', 'User Added');
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

}
