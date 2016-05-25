<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Requests\StoreOrganizationRequest;
use App\Commands\StoreOrganizationCommand;

class OrganizationsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('organization/index');
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
		// Get all inputs
        $name = $request->input('name');
        $address1 = $request->input('address1');
        $address2 = $request->input('address2');
        $city = $request->input('city');
        $state = $request->input('state');
        $zipcode = $request->input('zipcode');
		
		// TODO Need to generate the database file name
        $database_file = '';
		
		$org = new Organization();
		
		$org->name = $name;
		$org->address1 = $address1;
		$org->address2 = $address2;
		$org->city = $city;
		$org->state = $state;
		$org->zipcode = $zipcode;
		$org->database_file = $database_file;
		var_dump($org);
//		$org->save();
		
//		// Instantiate the command
//		$command = new StoreOrganizationCommand($name, $address1, $address2, $city, $state, $zipcode, $database_file);
//		// Run the command
//		$this->dispatch($command);
		
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
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
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
