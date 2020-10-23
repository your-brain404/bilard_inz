<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\CrudService;
use App\Http\Resources\PlayersResource;

class PlayersController extends Controller
{
	public function __construct() {
		new CrudService('App\Players');
	}

	public function getAll() {
		$offers = CrudService::getAll();
		return new PlayersResource($offers);
	}

	public function getOne($id) {
		$offers = CrudService::getOne($id);
		return new PlayersResource($offers);
	}

	public function getWhere(Request $request) {
		$offers = CrudService::getWhere($request, 'asc');
		return new PlayersResource($offers);
	}

	public function store(Request $request) {
		$offers = CrudService::saveData($request);
		return new PlayersResource($offers);
	}

	
	public function destroy($id) {
		$offers = CrudService::destroy($id);
		return new PlayersResource($offers); 
	}   
}
