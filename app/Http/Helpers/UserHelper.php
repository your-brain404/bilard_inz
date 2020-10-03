<?php 

namespace App\Http\Helpers;

use App\User;
use Illuminate\Database\Eloquent\Collection;

class UserHelper {
	public static function getOne(String $id): User{
		return User::find($id);
	}

	public static function getAll(): Collection{
		return User::all();
	}
}