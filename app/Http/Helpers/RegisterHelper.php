<?php 

namespace App\Http\Helpers;

use Illuminate\Http\Request;
use App\Http\Traits\RegisterTrait;
use App\Http\Traits\LoginTrait;
use App\Http\Helpers\ResponseHelper;
use App\Http\Resources\RegisterResource;

class RegisterHelper {

	use RegisterTrait, LoginTrait {
		RegisterTrait::validator insteadof LoginTrait;
	}

	protected static $user, $token;
 
	public static function register(Request $request) {
		
		$data = $request->all();

		if(!self::validator($data)) return ResponseHelper::validateResponse();

		if(self::findUser($data)) return ResponseHelper::findUserResponse(); 

		self::createUser($data);
		
		self::login($data);

		$registerResource = new RegisterResource(self::$user);
		$registerResource->token = self::$token;

		return $registerResource;
	}
} 