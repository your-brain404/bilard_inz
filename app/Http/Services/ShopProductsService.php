<?php
namespace App\Http\Services;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;
use App\Http\Services\CrudService;
use App\ShopProducts;

class ShopProductsService {

	public static function getWhere(Request $request) {
		$where = [];
		if($request->category_id) $where['category_id'] = $request->category_id;
		if($request->active) $where['active'] = $request->active;
		return ShopProducts::where($where)->orderBy($request->field, $request->sort)->paginate();
	}

	public static function getCartProducts(Request $request) {
		$query =  ShopProducts::orderBy('id', 'desc');
		foreach($request->id as $i => $id) {
			if($i == 0) $query->where('id', $id);
			else $query->orWhere('id', $id);
		}

		return $query->get();
	}
	
}