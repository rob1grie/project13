<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;

class AuthController extends Controller {
	public function getLogin() {
		return view('auth/login');
	}
	
	public function postLogin(Request $request) {
		if (Auth::attempt(['username' => $request->username, 'password' => $request->password])) {
			return Auth::user();
		}
		else {
			return redirect('login')->withErrors(['error' => 'Invalid username or password']);
		}
	}
	
	public function getLogout() {
		Auth::logout();
		return view('auth/login');
	}
	
}