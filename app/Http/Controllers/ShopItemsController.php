<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Services\ShopItemsService;
use App\Http\Resources\ShopItemsResource;
use App\Http\Resources\ShopItemsCollection;
use Illuminate\Http\Request;

class ShopItemsController extends Controller
{
    public function __construct() {
		new CrudService('App\ShopItems');
	}

    public function getAll() {
		$shop_items = CrudService::getAll();
		return new ShopItemsCollection($shop_items);
	}

	public function getOne($id) {
		$shop_item = CrudService::getOne($id);
		return new ShopItemsResource($shop_item);
	}

	public function getWhere(Request $request) {
		$shop_items = CrudService::getWhere($request, 'asc');
		return new ShopItemsCollection($shop_items);
	}

	public function store(Request $request) {
		$shop_item = ShopItemsService::saveData($request);
		return new ShopItemsResource($shop_item);
	}
	
	public function destroy($id) {
		$shop_item = CrudService::destroy($id);
		return new ShopItemsResource($shop_item); 
	}

	
}
