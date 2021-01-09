<?php

namespace App\Http\Controllers;

use App\Http\Resources\CrudResource;
use App\Http\Services\CrudService;
use Illuminate\Http\Request;

class AboutUsController extends Controller {

	public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}

	public function getAll() {
		$data = CrudService::getAll();
		return new CrudResource($data);
	}

	public function getOne($id) {
		$data = CrudService::getOne($id);
		return new CrudResource($data);
	}

	public function store(Request $request) {
		$data = CrudService::saveData($request);
		return new CrudResource($data);
	}
}
