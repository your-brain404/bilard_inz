<?php

namespace App\Http\Controllers\Auth\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Helpers\LoginHelper;
use App\User;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;

class LoginController extends Controller
{
	public function login(Request $request){

		$response = LoginHelper::login($request);
		return $response;
	}

	public function redirectToProvider(Request $request)
	{
		return Socialite::driver('facebook')->redirect();
	}

	public function handleProviderCallback(Request $request)
	{
		$user = Socialite::driver('facebook')->user();
		$loggedUser = User::where('email', $user->email)->first();

		if($loggedUser == null){
			$loggedUser = new User;
			$loggedUser->name = $user->name;
			$loggedUser->email = $user->email;
			$loggedUser->type = 'Zawodnik';
			$loggedUser->email_verified_at = date("Y-m-d H:i:s");
			$loggedUser->password = bcrypt('123456');
			$loggedUser->save();
		}

		
		setcookie('email', $loggedUser->email, time() + (86400 * 30), "/");

		return redirect('/');


	}

	public function getToken(){
		$response = LoginHelper::fbLogin();
		return $response;
	}  
}
