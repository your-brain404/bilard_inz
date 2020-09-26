<?php

namespace App\Http\Controllers\Auth\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Helpers\LoginHelper;

class LoginController extends Controller
{
	public function login(Request $request){

		$response = LoginHelper::login($request);
		return $response;
	}  
}
