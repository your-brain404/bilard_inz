<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\CrudResource;
use Illuminate\Http\Request;

class ShopCategoriesController extends Controller
{
    public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}

    public function getAll() {
		$shop_categories = CrudService::getAll();
		return new CrudResource($shop_categories);
	}

	public function getOne($id) {
		$shop_category = CrudService::getOne($id);
		return new CrudResource($shop_category);
	}

	public function getWhere(Request $request) {
		$shop_categories = CrudService::getWhere($request, 'asc');
		return new CrudResource($shop_categories);
	}

	public function store(Request $request) {
		$shop_category = CrudService::saveData($request);
		return new CrudResource($shop_category);
	}
	
	public function destroy($id) {
		$shop_category = CrudService::destroy($id);
		return new CrudResource($shop_category); 
	}
}
