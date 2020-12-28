<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\SettingsResource;
use Illuminate\Http\Request;

class SettingsController extends Controller
{
	public function __construct() {
		new CrudService('App\Settings');
	}

	public function getAll() {
		$settings = CrudService::getAll();
		return new SettingsResource($settings);
	}

	public function getOne($id) {
		$settings = CrudService::getOne($id);
		return new SettingsResource($settings);
	}

	public function getWhere(Request $request) {
		$settings = CrudService::getWhere($request, 'asc');
		return new SettingsResource($settings);
	}

	public function store(Request $request) {
		$settings = CrudService::saveData($request);
		return new SettingsResource($settings);
	}
	
	public function destroy($id) {
		$settings = CrudService::destroy($id);
		return new SettingsResource($settings); 
	}   
}
