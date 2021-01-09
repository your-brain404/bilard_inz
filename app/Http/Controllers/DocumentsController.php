<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\CrudResource;
use Illuminate\Http\Request;

class DocumentsController extends Controller
{
    public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}

    public function getAll() {
		$documents = CrudService::getAll();
		return new CrudResource($documents);
	}

	public function getOne($id) {
		$document = CrudService::getOne($id);
		return new CrudResource($document);
	}

	public function getWhere(Request $request) {
		$documents = CrudService::getWhere($request, 'asc');
		return new CrudResource($documents);
	}

	public function store(Request $request) {
		$document = CrudService::saveData($request);
		return new CrudResource($document);
	}
	
	public function destroy($id) {
		$document = CrudService::destroy($id);
		return new CrudResource($document); 
	}
}
