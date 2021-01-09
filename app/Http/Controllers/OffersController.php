<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\CrudResource;
use Illuminate\Http\Request;

class OffersController extends Controller
{
	public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}

    public function getAll() {
		$offers = CrudService::getAll();
		return new CrudResource($offers);
	}

	public function getOne($id) {
		$offers = CrudService::getOne($id);
		return new CrudResource($offers);
	}

	public function getWhere(Request $request) {
		$offers = CrudService::getWhere($request, 'asc');
		return new CrudResource($offers);
	}

	public function store(Request $request) {
		$offers = CrudService::saveData($request);
		return new CrudResource($offers);
	}
	
	public function destroy($id) {
		$offers = CrudService::destroy($id);
		return new CrudResource($offers); 
	}
}
