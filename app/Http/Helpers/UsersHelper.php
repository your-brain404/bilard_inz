<?php
namespace App\Http\Helpers;

use App\User;
use Illuminate\Database\Eloquent\Collection;

class UsersHelper {

	public static function getCommentators($request): Collection {
		foreach ($request->id as $i => $id) {
            if($i == 0) $users = User::where('id', $id);
            $users = $users->orWhere('id', $id);
        }
		return $users->get();
	}
}