<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\SubpagesResource;
use App\Http\Services\CrudService;

class SubpagesController extends Controller
{
	public function __construct() {
		new CrudService('App\Subpages');
	}
	
    public function getAll() {
		$offers = CrudService::getAll();
		return new SubpagesResource($offers);
	}

	public function getOne($id) {
		$offers = CrudService::getOne($id);
		return new SubpagesResource($offers);
	}

	
	public function store(Request $request) {
		$offers = CrudService::saveData($request);
		return new SubpagesResource($offers);
	}

	
	public function destroy($id) {
		$offers = CrudService::destroy($id);
		return new SubpagesResource($offers); 
	}
}
