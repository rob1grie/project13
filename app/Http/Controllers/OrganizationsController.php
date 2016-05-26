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
		// TODO Need to generate the database file name
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
		
		return \Redirect::route('organizations.index')->with('message', 'Organization Added');
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
		// TODO Need to generate the database file name
        $database_file = '';
		
		$org = Organization::find($id);
		
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
		
		return \Redirect::route('organizations.index')->with('message', 'Organization Updated');
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
