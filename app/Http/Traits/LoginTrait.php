<?php 

namespace App\Http\Traits;

use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Http\Resources\LoginResource;

trait LoginTrait {
	public static function validator(array $data): bool {
		$validator = Validator::make($data, [
			'email' => 'required|string|email',
			'password' => 'required|string',
		]);

		return $validator->fails();
	}

	public static function findUser(array $data): bool {
		self::$user = User::where('email', $data['email'])->first();
		return self::$user ? true : false;
	}

	public static function login(array $data) {
		if(self::$user) {
			if(Auth::attempt(['email' => $data['email'], 'password' => $data['password'] ])) {
				self::$token = Auth::user()->createToken('authToken')->accessToken;
			}
		}
	}

	public static function getResource(): LoginResource{
		$loginResource = new LoginResource(self::$user);
		$loginResource->token = self::$token;

		return $loginResource;
	}

}