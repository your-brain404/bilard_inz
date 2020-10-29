<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Helpers\FileHelper;
use App\Http\Resources\AvatarsResource;

class AvatarsController extends Controller
{
    public function store(Request $request) {
    	$avatar = FileHelper::store($request->file('file'), 'avatars');
    	return new AvatarsResource($avatar);
    }
}
