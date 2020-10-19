<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\CrudService;
use App\Http\Resources\UserResource;

class UserController extends Controller
{
	public function __construct() {
		new CrudService('App\User');
	}
	
    public function getAll(){
    	$user = CrudService::getAll();
    	return new UserResource($user);
    }

    public function getOne($id){
    	$user = CrudService::getOne($id);
    	return new UserResource($user);
    }

}
