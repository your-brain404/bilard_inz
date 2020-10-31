<?php

namespace App\Http\Controllers;

use App\Http\Resources\PriceListCollection;
use App\Http\Resources\PriceListResource;
use App\Http\Services\CrudService;
use Illuminate\Http\Request;

class PriceListController extends Controller
{
    public function __construct() {
		new CrudService('App\PriceList');
	}

	public function getAll() {
		$price_lists = CrudService::getAll();
		return new PriceListCollection($price_lists);
	}

	public function getOne($id) {
		$price_list = CrudService::getOne($id);
		return new PriceListResource($price_list);
	}

	public function getWhere(Request $request) {
		$price_lists = CrudService::getWhere($request, 'asc');
		return new PriceListCollection($price_lists);
	}

	public function store(Request $request) {
		$price_list = CrudService::saveData($request);
		return new PriceListResource($price_list);
	}

	public function destroy($id) {
		$price_list = CrudService::destroy($id);
		return new PriceListResource($price_list); 
	}
}
