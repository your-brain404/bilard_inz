<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\HistoryResource;
use Illuminate\Http\Request;

class HistoryController extends Controller
{
    public function __construct() {
		new CrudService('App\History');
	}

    public function getAll() {
		$offers = CrudService::getAll();
		return new HistoryResource($offers);
	}

	public function getOne($id) {
		$offers = CrudService::getOne($id);
		return new HistoryResource($offers);
	}

	public function getWhere(Request $request) {
		$offers = CrudService::getWhere($request, 'asc');
		return new HistoryResource($offers);
	}

	public function store(Request $request) {
		$offers = CrudService::saveData($request);
		return new HistoryResource($offers);
	}

	
	public function destroy($id) {
		$offers = CrudService::destroy($id);
		return new HistoryResource($offers); 
	}
}