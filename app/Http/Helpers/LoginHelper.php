<?php 
namespace App\Http\Helpers;

use Illuminate\Http\Request;
use App\Http\Traits\LoginTrait;
use App\Http\Helpers\ResponseHelper;
use App\Http\Resources\LoginResource;

class LoginHelper {

	use LoginTrait {
		LoginTrait::login as signIn;
	}

	protected static $user, $token;
 
	public static function login(Request $request) {

		$data = $request->all();

		if(self::validator($data) || !self::findUser($data)) return ResponseHelper::validateResponse(); 
		
		self::signIn($request);

		$loginResource = new LoginResource(self::$user);
		$loginResource->token = self::$token;

		return $loginResource;
	}


}