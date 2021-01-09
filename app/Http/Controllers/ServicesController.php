<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\CrudResource;
use Illuminate\Http\Request;

class ServicesController extends Controller
{
    public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}

    public function getAll() {
		$services = CrudService::getAll();
		return new CrudResource($services);
	}

	public function getOne($id) {
		$service = CrudService::getOne($id);
		return new CrudResource($service);
	}

	public function getWhere(Request $request) {
		$services = CrudService::getWhere($request, 'asc');
		return new CrudResource($services);
	}

	public function store(Request $request) {
		$service = CrudService::saveData($request);
		return new CrudResource($service);
	}
	
	public function destroy($id) {
		$service = CrudService::destroy($id);
		return new CrudResource($service); 
	}
}
