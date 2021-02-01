<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\CrudResource;
use Illuminate\Http\Request;

class ShopItemColorsController extends Controller
{
    public function __construct() {
		CrudService::$model = 'App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]);
	}

    public function getAll() {
		$shop_item_colors = CrudService::getAll();
		return new CrudResource($shop_item_colors);
	}

	public function getOne($id) {
		$shop_item_color = CrudService::getOne($id);
		return new CrudResource($shop_item_color);
	}

	public function getWhere(Request $request) {
		$shop_item_colors = CrudService::getWhere($request, 'asc');
		return new CrudResource($shop_item_colors);
	}

	public function store(Request $request) {
		$shop_item_color = CrudService::saveData($request);
		return new CrudResource($shop_item_color);
	}
	
	public function destroy($id) {
		$shop_item_color = CrudService::destroy($id);
		return new CrudResource($shop_item_color); 
	}
}
