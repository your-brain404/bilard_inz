<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\ShopItemColorsResource;
use Illuminate\Http\Request;

class ShopItemColorsController extends Controller
{
    public function __construct() {
		new CrudService('App\ShopItemColors');
	}

    public function getAll() {
		$shop_item_colors = CrudService::getAll();
		return new ShopItemColorsResource($shop_item_colors);
	}

	public function getOne($id) {
		$shop_item_color = CrudService::getOne($id);
		return new ShopItemColorsResource($shop_item_color);
	}

	public function getWhere(Request $request) {
		$shop_item_colors = CrudService::getWhere($request, 'asc');
		return new ShopItemColorsResource($shop_item_colors);
	}

	public function store(Request $request) {
		$shop_item_color = CrudService::saveData($request);
		return new ShopItemColorsResource($shop_item_color);
	}
	
	public function destroy($id) {
		$shop_item_color = CrudService::destroy($id);
		return new ShopItemColorsResource($shop_item_color); 
	}
}
