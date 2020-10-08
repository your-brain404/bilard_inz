<?php 
namespace App\Http\Traits;

use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\User;

trait RegisterTrait {
	public static function validator(array $data): bool {
		$validator = Validator::make($data, [
			'name' => 'required|string',
			'email' => 'required|string|email',
			'password' => 'required|string',
			'type' => 'required|string'
		]);

		return $validator->fails();
	}

	public static function createUser(array $data) {
		self::$user = User::create([
			'name' => $data['name'],
			'email' => $data['email'],
			'type' => 'Klient',
			'photo' => $data['photo'],
			'password' => Hash::make($data['password']),
		]);
	}

}