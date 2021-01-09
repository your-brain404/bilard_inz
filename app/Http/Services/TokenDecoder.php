<?php
namespace App\Http\Services;

use Illuminate\Http\Request;
use App\Http\Services\CrudService;

class TokenDecoder {

	public static function decode($request): object {
		$token = $request->bearerToken();
        $tokenParts = explode(".", $token);  
        $tokenHeader = base64_decode($tokenParts[0]);
        $tokenPayload = base64_decode($tokenParts[1]);
        $jwtHeader = json_decode($tokenHeader);
        $jwtPayload = json_decode($tokenPayload);

        return $jwtPayload;
	}
}