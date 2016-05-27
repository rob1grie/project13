<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Organization;

class OrganizationsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $orgs = Organization::all();
        return view('organization/index', compact('orgs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('organization/create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
		// Initialize database_file to blank
        $database_file = '';
		
		$org = new Organization();
		
		$org->name = $request->input('name');
		$org->address1 = $request->input('address1');
		$org->address2 = $request->input('address2');
		$org->city = $request->input('city');
		$org->state = $request->input('state');
		$org->zipcode = $request->input('zipcode');
		$org->main_phone = $request->input('main_phone');
		$org->alt_phone = $request->input('alt_phone');
		$org->database_file = $database_file;
		$org->save();
		
		// Get new id, create database_file and save updated record
		$database_file = 'data' . $org->id . '.sqlite';
		$org->save();
		
		return \Redirect::route('organizations.show', compact('org'))->with('message', 'Organization Added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $org = Organization::find($id);
        return view('organization/show', compact('org'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $org = Organization::find($id);
		return view('organization/edit', compact('org'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
		// database_file was set when the Organization was created, and won't change
		$org = Organization::find($id);
		
		$org->name = $request->input('name');
		$org->address1 = $request->input('address1');
		$org->address2 = $request->input('address2');
		$org->city = $request->input('city');
		$org->state = $request->input('state');
		$org->zipcode = $request->input('zipcode');
		$org->main_phone = $request->input('main_phone');
		$org->alt_phone = $request->input('alt_phone');
		$org->save();
		
		return \Redirect::route('organizations.show', compact('org'))->with('message', 'Organization Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
