<?php

namespace App\Http\Controllers;

use App\Http\Helpers\SliderHelper;
use App\Http\Services\CrudService;
use App\Http\Resources\CrudResource;
use Illuminate\Http\Request;

class SliderController extends Controller {

	public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}
	
	public function getAll() {
		$slider = CrudService::getAll();
		return new CrudResource($slider);
	}

	public function getOne($id) {
		$slider = CrudService::getOne($id);
		return new CrudResource($slider);
	}

	public function getWhere(Request $request) {
		$slider = CrudService::getWhere($request, 'asc');
		return new CrudResource($slider);
	}

	
	public function store(Request $request) {
		$slider = CrudService::saveData($request);
		return new CrudResource($slider);
	}

	
	public function destroy($id) {
		$slider = CrudService::destroy($id);
		return new CrudResource($slider); 
	}
}
