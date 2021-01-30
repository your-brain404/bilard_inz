<?php
namespace App\Http\Services;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;
use App\Http\Services\CrudService;
use App\Http\Helpers\ResponseHelper;
use Illuminate\Support\Facades\Mail;
use App\OrderedProducts;
use App\Contact;
use App\ShopDescriptions;
use App\Mail\NewOrder;
use App\Mail\YourOrder;

class ShopOrdersService {

	private static $model = 'App\ShopOrders';

	public static function prependData(Request $request): array {
		$requestArr = $request->all();
		$data = [
			'is_paid' => 0,
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
			'main_city' => $requestArr['shipping_details']['main_address']['city'],
			'main_email' => $requestArr['shipping_details']['main_address']['email'],
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

	public static function checkProductsAvailability(array $products): array {
		$response = [];
		$shop_descriptions = ShopDescriptions::find(1);

		foreach($products as $product) {
			$model = isset($product['product']['product_id']) ? 'App\ShopItems' : 'App\ShopProducts';
			$current_product = $model::find($product['product']['id']);
			if(!$current_product) {
				array_push($response, ['message' => str_replace('{produkt}', $product['product']['title'], $shop_descriptions->product_deleted), 'delete' => true, 'product' => $product]);
			}
			elseif($current_product->amount < $product['amount']) {
				array_push($response, ['message' => str_replace('{ilosc}', $current_product->amount , str_replace('{produkt}', $current_product->title, $shop_descriptions->product_amount)), 'amount' => $current_product->amount, 'product' => $product]);
			} 
		}
		return $response;
	}

	public static function saveData(Request $request) {

		$data = $request->isMethod('post') ? self::prependData($request) : CrudService::prependData($request);

		$availableResponse = self::checkProductsAvailability($request->all()['products']);

		if(!empty($availableResponse)) return ResponseHelper::productsAvailableError($availableResponse);

		$shop_order = $request->isMethod('put') ? self::$model::where('id', $request->input('id'))->first()->fill($data) : self::$model::create($data);

		foreach($request->all()['products'] as $product) {
			$field = isset($product['product']['product_id']) ? 'item_id' : 'product_id';
			$insert[$field] = $product['product']['id'];
			$insert['shop_order_id'] = $shop_order->id;
			$insert['amount'] = $product['amount'];
			$model = isset($product['product']['product_id']) ? 'App\ShopItems' : 'App\ShopProducts';
			$model = $model::find($product['product']['id']);
			$model->amount -= $insert['amount'];
			$model->save();
			OrderedProducts::create($insert);
			unset($insert);
		}

		Mail::to(Contact::find(1)->email_1)->send(new NewOrder($shop_order));
		Mail::to($shop_order->main_email)->send(new YourOrder($shop_order));

		$shop_order->save(); 

		return $shop_order;
	}

	
}