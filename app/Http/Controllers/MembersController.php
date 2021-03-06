<?php namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Member;
use App\Role;
use App\Organization;

class MembersController extends Controller {

	/**
	 * Display a listing of the Members.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index() {
		$members = Member::orderBy('last_name')
				->orderBy('first_name')
				->get();
		return view('member/index', compact('members'));
	}

	/**
	 * Show the form for creating a new Member.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create() {
		$username = 'p13man-' . \App\Settings::getNextId();
		
		$organizations = Organization::lists('name', 'id')->sortBy('name');
		$organizations->prepend('[Select member\'s organization]', 0);

		return view('member/create', compact('username', 'organizations'));
	}

	/**
	 * Store a newly created Member in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request) {

		$member = new Member();
		$member->username = $request->input('username');
		$member->password = $request->input('password');
		$member->first_name = $request->input('first_name');
		$member->last_name = $request->input('last_name');
		$member->email = $request->input('email');
		$member->role_id = 1;										// Initial Role is [None] until added to a Project13
		$member->password = bcrypt(Member::generatePassword());
		$member->organization_id = $request->input('organization');
		$member->save();
		\App\Settings::saveNextId($member->username);

		return \Redirect::route('members.index')->with('message', 'Member Added');
	}

	/**
	 * Display the specified Member.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id) {
		$member = Member::find($id);
		return view('member/show', compact('member'));
	}

	/**
	 * Show the form for editing the specified Member.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id) {
		$roles = Role::lists('name', 'id');
		$roles->prepend('[Select member role]', 0);

		$organizations = Organization::lists('name', 'id')->sortBy('name');
		$organizations->prepend('[Select member\'s organization]', 0);

		$member = Member::find($id);
		return view('member/edit', compact('member', 'roles', 'organizations'));
	}

	/**
	 * Update the specified Member in storage.
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
	 * Remove the specified Member from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id) {
		//
	}

}
