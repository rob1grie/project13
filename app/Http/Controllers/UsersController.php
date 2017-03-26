<?php namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Member;
use App\Role;
use App\Organization;

class MembersController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index() {
		$members = Member::all();
		return view('member/index', compact('members'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create() {
		$membername = 'p13man-' . \App\Settings::getNextId();
		
		$roles = Role::lists('role', 'id');
		$roles->prepend('[Select member role]', 0);

		$organizations = Organization::lists('name', 'id')->sortBy('name');
		$organizations->prepend('[Select member\'s organization]', 0);

		return view('member/create', compact('membername', 'roles', 'organizations'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request) {

		$member = new Member();
		$member->membername = $request->input('membername');
		$member->password = $request->input('password');
		$member->first_name = $request->input('first_name');
		$member->last_name = $request->input('last_name');
		$member->email = $request->input('email');
		$member->role_id = $request->input('role');
		$member->organization_id = $request->input('organization');
		if ($member->save()) {
			\App\Settings::setNextId($member->getMemberId());
		}

		return \Redirect::route('members.index')->with('message', 'Member Added');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id) {
		$member = Member::find($id);
		return view('member/show', compact('member'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id) {
		$roles = Role::lists('role', 'id');
		$roles->prepend('[Select member role]', 0);

		$organizations = Organization::lists('name', 'id')->sortBy('name');
		$organizations->prepend('[Select member\'s organization]', 0);

		$member = Member::find($id);
		return view('member/edit', compact('member', 'roles', 'organizations'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id) {
		
		$member = Member::find($id);
		
		$member->first_name = $request->input('first_name');
		$member->last_name = $request->input('last_name');
		$member->email = $request->input('email');
		$member->role_id = $request->input('role');
		$member->organization_id = $request->input('organization');
		$member->save();

		return \Redirect::route('members.show', compact('member'))->with('message', 'Member Updated');
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
