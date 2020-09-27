<?php 

namespace App\Http\Helpers;

use App\User;

class UserHelper {
	public static function getOne(String $id): User{
		return User::find($id);
	}
}