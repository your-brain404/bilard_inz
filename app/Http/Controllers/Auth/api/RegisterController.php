<?php

namespace App\Http\Controllers\Auth\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Response;

class RegisterController extends Controller
{
	public function register(Request $request){

		$data = $request->all();

		$validator = Validator::make($data, [
			'name' => 'required|string',
			'email' => 'required|string|email',
			'password' => 'required|string',
			'type' => 'required|string'
		]);

		if($validator->fails()) return new Response('Niepoprawne dane logowania!', 200);


		$user = User::create([
			'name' => $data['name'],
			'email' => $data['email'],
			'type' => $data['type'],
			'password' => Hash::make($data['password']),
		]);

		if($user){
			if(Auth::attempt($request->only('email', 'password'))){

				$accessToken = Auth::user()->createToken('authToken')->accessToken;
				var_dump($accessToken);die;
			}
		}
	}
}
