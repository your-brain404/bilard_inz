<?php
namespace App\Http\Services;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;
use App\Http\Services\CrudService;
use App\ShopItems;

class ShopItemsService {

	

	public static function saveData(Request $request): Model{

		$data = CrudService::prependData($request);
		if(ShopItems::where('product_id', $data['product_id'])->first() == null) $data['default'] = 1;
		$shop_item = $request->isMethod('put') ? ShopItems::where('id', $request->input('id'))->first()->fill($data) : ShopItems::create($data);

		if ($shop_item->save()) {

			return $shop_item;
		}
	}

	
}