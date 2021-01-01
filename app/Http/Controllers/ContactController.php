<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\ContactResource;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}

    public function getAll() {
		$contact = CrudService::getAll();
		return new ContactResource($contact);
	}

	public function getOne($id) {
		$contact = CrudService::getOne($id);
		return new ContactResource($contact);
	}

	public function getWhere(Request $request) {
		$contact = CrudService::getWhere($request, 'asc');
		return new ContactResource($contact);
	}

	public function store(Request $request) {
		$contact = CrudService::saveData($request);
		return new ContactResource($contact);
	}
	
	public function destroy($id) {
		$contact = CrudService::destroy($id);
		return new ContactResource($contact); 
	}
}
