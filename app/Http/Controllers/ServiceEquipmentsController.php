<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\ServiceEquipmentsCollection;
use App\Http\Resources\CrudResource;
use Illuminate\Http\Request;

class ServiceEquipmentsController extends Controller
{
    public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}

    public function getAll() {
		$equipments = CrudService::getAll();
		return new ServiceEquipmentsCollection($equipments);
	}

	public function getOne($id) {
		$equipment = CrudService::getOne($id);
		return new CrudResource($equipment);
	}

	public function getWhere(Request $request) {
		$equipments = CrudService::getWhere($request, 'asc');
		return new ServiceEquipmentsCollection($equipments);
	}

	public function store(Request $request) {
		$equipment = CrudService::saveData($request);
		return new CrudResource($equipment);
	}
	
	public function destroy($id) {
		$equipment = CrudService::destroy($id);
		return new CrudResource($equipment); 
	}
}
