<?php 

namespace App\Http\Helpers;

use Illuminate\Http\Response;

class ResponseHelper {

	public static function validateResponse(){
		return new Response(json_encode([
			'error' => [
				'message' => 'Niepoprawne dane!',
				'code' => 400,
				'status' => false
			]
		]), 400);
	}

	public static function findUserResponse(){
		return new Response(json_encode([
			'error' => [
				'message' => 'Taki użytkownik już istnieje!',
				'code' => 400,
				'status' => false
			]
		]), 400);
	}
} 