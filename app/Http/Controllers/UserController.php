<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Helpers\UserHelper;
use App\Http\Resources\UserResource;

class UserController extends Controller
{
    public function getAll(){
    	$user = UserHelper::getAll();
    	return new UserResource($user);
    }

    public function getOne($id){
    	$user = UserHelper::getOne($id);
    	return new UserResource($user);
    }

}
