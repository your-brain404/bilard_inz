<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\ServiceEquipmentsResource;
use Illuminate\Http\Request;

class ServiceEquipmentsController extends Controller
{
    public function __construct() {
		new CrudService('App\ServiceEquipments');
	}

    public function getAll() {
		$equipments = CrudService::getAll();
		return new ServiceEquipmentsResource($equipments);
	}

	public function getOne($id) {
		$equipment = CrudService::getOne($id);
		return new ServiceEquipmentsResource($equipment);
	}

	public function getWhere(Request $request) {
		$equipments = CrudService::getWhere($request, 'asc');
		return new ServiceEquipmentsResource($equipments);
	}

	public function store(Request $request) {
		$equipment = CrudService::saveData($request);
		return new ServiceEquipmentsResource($equipment);
	}
	
	public function destroy($id) {
		$equipment = CrudService::destroy($id);
		return new ServiceEquipmentsResource($equipment); 
	}
}