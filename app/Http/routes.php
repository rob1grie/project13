<?php
/*
  |--------------------------------------------------------------------------
  | Application Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register all of the routes for an application.
  | It's a breeze. Simply tell Laravel the URIs it should respond to
  | and give it the controller to call when that URI is requested.
  |
 */

Route::get('/', function () {
    return view('welcome');
});

Route::resource('organizations', 'OrganizationsController');

Route::resource('members', 'MembersController');

Route::get('project13s/{org_id}/addp13', 'Project13sController@addOrgProject13');
Route::resource('project13s', 'Project13sController');

/*
 * Returns JSON data for all Organization members
 */
Route::get('/org-members', function() {
    $org_id = Input::get('org_id');

    $members = App\Member::where('organization_id', '=', $org_id)
            ->orderBy('last_name', 'asc')
            ->orderBy('first_name', 'asc')
            ->get();

    return Response::json($members);
});

/*
 * Returns JSON data for Organization members that don't belong to a Project 13
 */
Route::get('/org-members-no-p13', function() {
    $org_id = Input::get('org_id');

    $members = App\Member::where('organization_id', '=', $org_id)
			->where('project13_id', '=', NULL)
            ->orderBy('last_name', 'asc')
            ->orderBy('first_name', 'asc')
            ->get();

    return Response::json($members);	
});

// Auth routes
Route::get('login', 'AuthController@getLogin');
Route::post('login', 'AuthController@postLogin');
Route::get('logout', 'AuthController@getLogout');
