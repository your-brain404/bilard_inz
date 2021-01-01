<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\DocumentsResource;
use Illuminate\Http\Request;

class DocumentsController extends Controller
{
    public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}

    public function getAll() {
		$documents = CrudService::getAll();
		return new DocumentsResource($documents);
	}

	public function getOne($id) {
		$document = CrudService::getOne($id);
		return new DocumentsResource($document);
	}

	public function getWhere(Request $request) {
		$documents = CrudService::getWhere($request, 'asc');
		return new DocumentsResource($documents);
	}

	public function store(Request $request) {
		$document = CrudService::saveData($request);
		return new DocumentsResource($document);
	}
	
	public function destroy($id) {
		$document = CrudService::destroy($id);
		return new DocumentsResource($document); 
	}
}
