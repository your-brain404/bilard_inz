<?php 

namespace App\Http\Helpers;

use Illuminate\Http\Response;
use App\Http\Resources\ResponseResource;

class ResponseHelper {

	public static function validateResponse(){
		return new Response(json_encode([
			'error' => [
				'message' => 'Niepoprawne dane!',
				'code' => 400,
				'status' => false
			]
		]), 200);
	}

	public static function findUserResponse(){
		return new Response(json_encode([
			'error' => [
				'message' => 'Taki użytkownik już istnieje!',
				'code' => 400,
				'status' => false
			]
		]), 200);
	}

	public static function mailSuccessResponse(){
		return [
			"success" => [
				'message' => "Pomyślnie wysłano wiadomość!",
				'code' => 201,
				'status' => true
			]
		];
	}

	public static function mailErrorResponse(){
		return [
			"error" => [
				'message' => "Przepraszamy, coś poszło nie tak...",
				'code' => 500,
				'status' => false
			]
		];
	}
} 