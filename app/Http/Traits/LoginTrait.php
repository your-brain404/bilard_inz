<?php 

namespace App\Http\Traits;

use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

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

	public static function login(Request $request) {
		if(self::$user) {
			if(Auth::attempt($request->only('email', 'password'))) {
				self::$token = Auth::user()->createToken('authToken')->accessToken;
			}
		}
	}
}