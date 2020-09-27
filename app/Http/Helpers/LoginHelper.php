<?php 
namespace App\Http\Helpers;

use Illuminate\Http\Request;
use App\Http\Traits\LoginTrait;
use App\Http\Helpers\ResponseHelper;
use App\Http\Resources\LoginResource;
use App\User;
use Illuminate\Support\Facades\Auth;

class LoginHelper {

	use LoginTrait {
		LoginTrait::login as signIn;
	}

	protected static $user, $token;

	public static function login(Request $request) {

		$data = $request->all();
		if(!self::validator($data) || !self::findUser($data)) return ResponseHelper::validateResponse();	
		
		if(!self::signIn($data)) return ResponseHelper::validateResponse();

		return self::getResource();
	}

	public static function fbLogin(){
		self::findUser(['email' => $_COOKIE['email']]);
		unset($_COOKIE['email']);
		Auth::login(self::$user);

		self::$token = Auth::user()->createToken('authToken')->accessToken;

		return self::getResource();

	}


}