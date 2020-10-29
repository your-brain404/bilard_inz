<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\CrudService;
use App\Http\Helpers\RegisterHelper;
use App\Http\Resources\UserResource;
use App\User;

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

    public function getWhere(Request $request) {
        $users = CrudService::getWhere($request, 'asc');
        return new UserResource($users);
    }

    public function store(Request $request) {
        $user = CrudService::saveData($request);
        return new UserResource($user);
    }

    public function confirm($id) {
        return RegisterHelper::activate($id);
    }

    public function destroy($id) {
        $user = CrudService::destroy($id);
        return new UserResource($user); 
    }

}
