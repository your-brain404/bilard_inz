<?php

namespace App\Http\Controllers;

use App\Http\Resources\PriceListCollection;
use App\Http\Resources\CrudResource;
use App\Http\Services\CrudService;
use Illuminate\Http\Request;

class PriceListController extends Controller
{
    public function __construct() {
		CrudService::$model = 'App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]);
	}

	public function getAll() {
		$price_lists = CrudService::getAll();
		return new PriceListCollection($price_lists);
	}

	public function getOne($id) {
		$price_list = CrudService::getOne($id);
		return new CrudResource($price_list);
	}

	public function getWhere(Request $request) {
		$price_lists = CrudService::getWhere($request, 'asc');
		return new PriceListCollection($price_lists);
	}

	public function store(Request $request) {
		$price_list = CrudService::saveData($request);
		return new CrudResource($price_list);
	}

	public function destroy($id) {
		$price_list = CrudService::destroy($id);
		return new CrudResource($price_list); 
	}
}
