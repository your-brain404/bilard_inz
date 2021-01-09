<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Services\ShopOrdersService;
use App\Http\Resources\CrudResource;
use Illuminate\Http\Request;

class ShopOrdersController extends Controller
{
    public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}

    public function getAll() {
		$shop_orders = CrudService::getAll();
		return new CrudResource($shop_orders);
	}

	public function getOne($id) {
		$shop_order = CrudService::getOne($id);
		return new CrudResource($shop_order);
	}

	public function getWhere(Request $request) {
		$shop_orders = CrudService::getWhere($request, 'asc');
		return new CrudResource($shop_orders);
	}

	public function store(Request $request) {
		$shop_order = ShopOrdersService::saveData($request);
		return new CrudResource($shop_order);
	}
	
	public function destroy($id) {
		$shop_order = CrudService::destroy($id);
		return new CrudResource($shop_order); 
	}
}
