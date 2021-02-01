<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\CrudResource;
use Illuminate\Http\Request;

class PartnersController extends Controller
{
	public function __construct() {
		CrudService::$model = 'App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]);
	}

    public function getAll() {
		$partners = CrudService::getAll();
		return new CrudResource($partners);
	}

	public function getOne($id) {
		$partners = CrudService::getOne($id);
		return new CrudResource($partners);
	}

	public function getWhere(Request $request) {
		$partners = CrudService::getWhere($request, 'asc');
		return new CrudResource($partners);
	}

	public function store(Request $request) {
		$partners = CrudService::saveData($request);
		return new CrudResource($partners);
	}

	
	public function destroy($id) {
		$partners = CrudService::destroy($id);
		return new CrudResource($partners); 
	}
}
