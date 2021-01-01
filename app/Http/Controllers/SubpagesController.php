<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\SubpagesResource;
use App\Http\Services\CrudService;

class SubpagesController extends Controller
{
	public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}
	
	public function getAll() {
		$subpages = CrudService::getAll();
		return new SubpagesResource($subpages);
	}

	public function getOne($id) {
		$subpage = CrudService::getOne($id);
		return new SubpagesResource($subpage);
	}

	public function getWhere(Request $request) {
		$subpages = CrudService::getWhere($request, 'asc');
		return new SubpagesResource($subpages);
	}
	
	public function store(Request $request) {
		$subpage = CrudService::saveData($request);
		return new SubpagesResource($subpage);
	}

	
	public function destroy($id) {
		$subpage = CrudService::destroy($id);
		return new SubpagesResource($subpage); 
	}
}
