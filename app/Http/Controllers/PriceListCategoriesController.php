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
		$price_list_categories = CrudService::getAll();
		return new PriceListCategoriesResource($price_list_categories);
	}

	public function getOne($id) {
		$price_list_category = CrudService::getOne($id);
		return new PriceListCategoriesResource($price_list_category);
	}

	public function getWhere(Request $request) {
		$price_list_categories = CrudService::getWhere($request, 'asc');
		return new PriceListCategoriesResource($price_list_categories);
	}

	public function store(Request $request) {
		$price_list_category = CrudService::saveData($request);
		return new PriceListCategoriesResource($price_list_category);
	}

	public function destroy($id) {
		$price_list_category = CrudService::destroy($id);
		return new PriceListCategoriesResource($price_list_category); 
	}
}
