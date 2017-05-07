<?php

namespace App\Http\Controllers;

use App\User;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;

use Auth;

class AuthController extends Controller {
	public function getLogin() {
		return view('auth/login');
	}
	
	public function postLogin(Request $request) {
		if (Auth::attempt(['username' => $request->username, 'password' => $request->password])) {
			return 'authenticated';
		}
		else {
			return 'not authenticated';
		}
	}
	
}