<?php 

namespace App\Http\Helpers;

use Illuminate\Http\Response;
use App\Http\Resources\ResponseResource;
use App\SnackbarAlerts;

class ResponseHelper {

	public static function validateResponse(){
		return new Response(json_encode([
			'error' => [
				'message' => SnackbarAlerts::find(1)->validate,
				'code' => 400,
				'status' => false
			]
		]), 200);
	}

	public static function nonActivatedAccount() {
		return new Response(json_encode([
			'error' => [
				'message' => SnackbarAlerts::find(1)->non_activated_account,
				'code' => 400,
				'status' => false
			]
		]), 200);
	}

	public static function blockedUser() {
		return new Response(json_encode([
			'error' => [
				'message' => SnackbarAlerts::find(1)->blocked_user,
				'code' => 400,
				'status' => false
			]
		]), 200);
	}

	public static function findUserResponse(){
		return new Response(json_encode([
			'error' => [
				'message' => SnackbarAlerts::find(1)->user_exist,
				'code' => 400,
				'status' => false
			]
		]), 200);
	}

	public static function mailSuccessResponse(){
		return [
			"success" => [
				'message' => SnackbarAlerts::find(1)->mail_success,
				'code' => 201,
				'status' => true
			]
		];
	}

	public static function mailErrorResponse(){
		return [
			"error" => [
				'message' => SnackbarAlerts::find(1)->mail_error,
				'code' => 500,
				'status' => false
			]
		];
	}

	public static function invalidRecaptcha(){
		return [
			"error" => [
				'message' => SnackbarAlerts::find(1)->recaptcha_error,
				'code' => 500,
				'status' => false
			]
		];
	}
} 