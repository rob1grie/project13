<?php namespace App\Http\Controllers;

use Illuminate\Http\Request;
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
		$users = User::orderBy('last_name')
				->orderBy('first_name')
				->get();
		return view('user/index', compact('users'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create() {
		$username = 'p13man-' . \App\Settings::getNextId();
		
		$organizations = Organization::lists('name', 'id')->sortBy('name');
		$organizations->prepend('[Select user\'s organization]', 0);

		return view('user/create', compact('username', 'organizations'));
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
		$user->role_id = 1;										// Initial Role is [None] until added to a Project13
		$user->password = bcrypt(User::generatePassword());
		$user->organization_id = $request->input('organization');
		$user->save();
		\App\Settings::saveNextId($user->username);

		return \Redirect::route('users.index')->with('message', 'User Added');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id) {
		$user = User::find($id);
		return view('user/show', compact('user'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id) {
		$roles = Role::lists('role', 'id');
		$roles->prepend('[Select user role]', 0);

		$organizations = Organization::lists('name', 'id')->sortBy('name');
		$organizations->prepend('[Select user\'s organization]', 0);

		$user = User::find($id);
		return view('user/edit', compact('user', 'roles', 'organizations'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id) {
		
		$user = User::find($id);
		
		$user->first_name = $request->input('first_name');
		$user->last_name = $request->input('last_name');
		$user->email = $request->input('email');
		$user->role_id = $request->input('role');
		$user->organization_id = $request->input('organization');
		$user->save();

		return \Redirect::route('users.show', compact('user'))->with('message', 'User Updated');
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
