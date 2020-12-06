<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\LuckyNumberResource;
use Illuminate\Http\Request;

class LuckyNumberController extends Controller
{
    public function __construct() {
		new CrudService('App\LuckyNumber');
	}

    public function getAll() {
		$lucky_number = CrudService::getAll();
		return new LuckyNumberResource($lucky_number);
	}

	public function getOne($id) {
		$lucky_number = CrudService::getOne($id);
		return new LuckyNumberResource($lucky_number);
	}

	public function getWhere(Request $request) {
		$lucky_number = CrudService::getWhere($request, 'asc');
		return new LuckyNumberResource($lucky_number);
	}

	public function store(Request $request) {
		$lucky_number = CrudService::saveData($request);
		return new LuckyNumberResource($lucky_number);
	}
	
	public function destroy($id) {
		$lucky_number = CrudService::destroy($id);
		return new LuckyNumberResource($lucky_number); 
	}
}
