<?php

namespace App\Http\Controllers;

use App\Http\Service\CrudService;
use App\Http\Resources\PartnersResource;
use Illuminate\Http\Request;

class PartnersController extends Controller
{
	public function __construct() {
		new CrudService('App\Partners');
	}

    public function getAll() {
		$partners = CrudService::getAll();
		return new PartnersResource($partners);
	}

	public function getOne($id) {
		$partners = CrudService::getOne($id);
		return new PartnersResource($partners);
	}

	public function store(Request $request) {
		$partners = CrudService::saveData($request);
		return new PartnersResource($partners);
	}

	
	public function destroy($id) {
		$partners = CrudService::destroy($id);
		return new PartnersResource($partners); 
	}
}
