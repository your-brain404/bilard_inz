<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\ShopCategoriesResource;
use Illuminate\Http\Request;

class ShopCategoriesController extends Controller
{
    public function __construct() {
		new CrudService('App\ShopCategories');
	}

    public function getAll() {
		$shop_categories = CrudService::getAll();
		return new ShopCategoriesResource($shop_categories);
	}

	public function getOne($id) {
		$shop_category = CrudService::getOne($id);
		return new ShopCategoriesResource($shop_category);
	}

	public function getWhere(Request $request) {
		$shop_categories = CrudService::getWhere($request, 'asc');
		return new ShopCategoriesResource($shop_categories);
	}

	public function store(Request $request) {
		$shop_category = CrudService::saveData($request);
		return new ShopCategoriesResource($shop_category);
	}
	
	public function destroy($id) {
		$shop_category = CrudService::destroy($id);
		return new ShopCategoriesResource($shop_category); 
	}
}
