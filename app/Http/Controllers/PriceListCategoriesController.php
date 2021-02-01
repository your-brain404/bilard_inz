<?php

namespace App\Http\Controllers;

use App\Http\Resources\CrudResource;
use App\Http\Services\CrudService;
use Illuminate\Http\Request;

class PriceListCategoriesController extends Controller
{
    public function __construct() {
		CrudService::$model = 'App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]);
	}

	public function getAll() {
		$price_list_categories = CrudService::getAll();
		return new CrudResource($price_list_categories);
	}

	public function getOne($id) {
		$price_list_category = CrudService::getOne($id);
		return new CrudResource($price_list_category);
	}

	public function getWhere(Request $request) {
		$price_list_categories = CrudService::getWhere($request, 'asc');
		return new CrudResource($price_list_categories);
	}

	public function store(Request $request) {
		$price_list_category = CrudService::saveData($request);
		return new CrudResource($price_list_category);
	}

	public function destroy($id) {
		$price_list_category = CrudService::destroy($id);
		return new CrudResource($price_list_category); 
	}
}
