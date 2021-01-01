<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Services\ShopOrdersService;
use App\Http\Resources\ShopOrdersResource;
use Illuminate\Http\Request;

class ShopOrdersController extends Controller
{
    public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}

    public function getAll() {
		$shop_orders = CrudService::getAll();
		return new ShopOrdersResource($shop_orders);
	}

	public function getOne($id) {
		$shop_order = CrudService::getOne($id);
		return new ShopOrdersResource($shop_order);
	}

	public function getWhere(Request $request) {
		$shop_orders = CrudService::getWhere($request, 'asc');
		return new ShopOrdersResource($shop_orders);
	}

	public function store(Request $request) {
		$shop_order = ShopOrdersService::saveData($request);
		return new ShopOrdersResource($shop_order);
	}
	
	public function destroy($id) {
		$shop_order = CrudService::destroy($id);
		return new ShopOrdersResource($shop_order); 
	}
}
