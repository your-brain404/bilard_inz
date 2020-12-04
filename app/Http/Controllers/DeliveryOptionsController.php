<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\DeliveryOptionsResource;
use Illuminate\Http\Request;

class DeliveryOptionsController extends Controller
{
    public function __construct() {
		new CrudService('App\DeliveryOptions');
	}

    public function getAll() {
		$offers = CrudService::getAll();
		return new DeliveryOptionsResource($offers);
	}

	public function getOne($id) {
		$offers = CrudService::getOne($id);
		return new DeliveryOptionsResource($offers);
	}

	public function getWhere(Request $request) {
		$offers = CrudService::getWhere($request, 'asc');
		return new DeliveryOptionsResource($offers);
	}

	public function store(Request $request) {
		$offers = CrudService::saveData($request);
		return new DeliveryOptionsResource($offers);
	}
	
	public function destroy($id) {
		$offers = CrudService::destroy($id);
		return new DeliveryOptionsResource($offers); 
	}
}
