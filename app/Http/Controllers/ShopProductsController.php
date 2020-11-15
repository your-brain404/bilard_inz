<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Services\ShopProductsService;
use App\Http\Resources\ShopProductsResource;
use App\Http\Resources\ShopProductsCollection;
use Illuminate\Http\Request;

class ShopProductsController extends Controller
{
    public function __construct() {
		new CrudService('App\ShopProducts');
	}

    public function getAll() {
		$shop_products = CrudService::getAll();
		return new ShopProductsCollection($shop_products);
	}

	public function getOne($id) {
		$shop_product = CrudService::getOne($id);
		return new ShopProductsResource($shop_product, $shop_product->category);
	}

	public function getWhere(Request $request) {
		$shop_products = ShopProductsService::getWhere($request);
		return new ShopProductsCollection($shop_products);
	}

	public function store(Request $request) {
		$shop_product = CrudService::saveData($request);
		return new ShopProductsResource($shop_product, $shop_product->category);
	}
	
	public function destroy($id) {
		$shop_product = CrudService::destroy($id);
		return new ShopProductsResource($shop_product, $shop_product->category); 
	}
}
