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
		return ShopProducts::where($where)->orderBy($request->field, $request->sort)->paginate();
	}
	
}