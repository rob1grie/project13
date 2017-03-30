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

Route::resource('users', 'UsersController');

Route::get('project13s/{org_id}/addp13', 'Project13sController@addOrgProject13');
Route::resource('project13s', 'Project13sController');

Route::get('/org-users', function() {
    $org_id = Input::get('org_id');

    $users = App\User::where('organization_id', '=', $org_id)
            ->orderBy('last_name', 'asc')
            ->orderBy('first_name', 'asc')
            ->get();

    return Response::json($users);
});
