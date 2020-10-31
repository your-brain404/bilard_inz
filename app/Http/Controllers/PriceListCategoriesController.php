<?php

namespace App\Http\Controllers;

use App\Http\Resources\PriceListCategoriesResource;
use App\Http\Services\CrudService;
use Illuminate\Http\Request;

class PriceListCategoriesController extends Controller
{
    public function __construct() {
		new CrudService('App\PriceListCategories');
	}

	public function getAll() {
		$price_lists = CrudService::getAll();
		return new PriceListCategoriesResource($price_lists);
	}

	public function getOne($id) {
		$price_list = CrudService::getOne($id);
		return new PriceListCategoriesResource($price_list);
	}

	public function store(Request $request) {
		$price_list = CrudService::saveData($request);
		return new PriceListCategoriesResource($price_list);
	}

	public function destroy($id) {
		$price_list = CrudService::destroy($id);
		return new PriceListCategoriesResource($price_list); 
	}
}
