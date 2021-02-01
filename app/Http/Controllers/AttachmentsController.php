<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Services\AttachmentsService;
use App\Http\Resources\CrudResource;
use Illuminate\Http\Request;

class AttachmentsController extends Controller
{
	public function __construct() {
		CrudService::$model = 'App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]);
	}

	public function store(Request $request) {
		$attachment = AttachmentsService::saveData($request);
		return new CrudResource($attachment);
	}

	public function getWhere(Request $request) {
		$attachments = CrudService::getWhere($request, 'asc');
		return new CrudResource($attachments);
	}
	
	public function destroy($id) {
		$attachment = CrudService::destroy($id);
		return new CrudResource($attachment); 
	}
}
