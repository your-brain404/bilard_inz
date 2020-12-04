<?php
namespace App\Http\Services;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;
use App\Http\Services\CrudService;
use App\OrderedProducts;

class ShopOrdersService {

	private static $model = 'App\ShopOrders';

	public static function prependData(Request $request): array {
		$requestArr = $request->all();
		$data = [
			'paid' => 0,
			'sum' => $requestArr['sum'],
			'delivery' => $requestArr['payments']['delivery'],
			'payment' => $requestArr['payments']['payment'],

			'main_name' => $requestArr['shipping_details']['main_address']['name'],
			'main_phone' => $requestArr['shipping_details']['main_address']['phone'],
			'main_street' => $requestArr['shipping_details']['main_address']['street'],
			'main_house_number' => $requestArr['shipping_details']['main_address']['house_number'],
			'main_flat_number' => $requestArr['shipping_details']['main_address']['flat_number'],
			'main_zip_code' => $requestArr['shipping_details']['main_address']['zip_code'],
			'main_message' => $requestArr['shipping_details']['main_address']['message'],
		];

		if($requestArr['shipping_details']['other_address'] == '1') {
			$data['second_name'] = $requestArr['shipping_details']['second_address']['name'];
			$data['second_phone'] = $requestArr['shipping_details']['second_address']['phone'];
			$data['second_street'] = $requestArr['shipping_details']['second_address']['street'];
			$data['second_house_number'] = $requestArr['shipping_details']['second_address']['house_number'];
			$data['second_flat_number'] = $requestArr['shipping_details']['second_address']['flat_number'];
			$data['second_zip_code'] = $requestArr['shipping_details']['second_address']['zip_code'];
			$data['second_message'] = $requestArr['shipping_details']['second_address']['message'];
		}

		return $data;
	}

	public static function saveData(Request $request): Model{

		$data = $request->isMethod('post') ? self::prependData($request) : CrudService::prependData($request);

		$model = $request->isMethod('put') ? self::$model::where('id', $request->input('id'))->first()->fill($data) : self::$model::create($data);

		foreach($request->all()['products'] as $product) {
			$field = isset($product['product']['product_id']) ? 'item_id' : 'product_id';
			$insert[$field] = $product['product']['id'];
			$insert['shop_order_id'] = $model->id;
			OrderedProducts::create($insert);
			unset($insert);
		}


		if ($model->save()) {

			return $model;
		}
	}

	
}