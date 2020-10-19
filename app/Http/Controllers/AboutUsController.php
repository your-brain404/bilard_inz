<?php

namespace App\Http\Controllers;

use App\Http\Resources\AboutUsResource;
use App\Http\Services\CrudService;
use Illuminate\Http\Request;

class AboutUsController extends Controller {

	public function __construct() {
		new CrudService('App\AboutUs');
	}

	public function getAll() {
		$about_us = CrudService::getAll();
		return new AboutUsResource($about_us);
	}

	public function getOne($id) {
		$about_us = CrudService::getOne($id);
		return new AboutUsResource($about_us);
	}

	public function store(Request $request) {
		$about_us = CrudService::saveData($request);
		return new AboutUsResource($about_us);
	}
}
