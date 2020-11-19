<?php
namespace App\Http\Services;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class CrudService {

	private static $model;

	public function __construct(String $model) {
		self::$model = $model;
	}

	public static function prependData(Request $request): array {
		return $request->all();
	}

	public static function saveData(Request $request): Model{

		$data = self::prependData($request);
		$model = $request->isMethod('put') ? self::$model::where('id', $request->input('id'))->first()->fill($data) : self::$model::create($data);

		if ($model->save()) {

			return $model;
		}
	}

	public static function getWhere(Request $request, String $sort) {
		return self::$model::where($request->all())->orderBy('created_at', $sort)->get();
	}

	public static function getAll(){
		var_dump(self::$model::where('category_id', 1)->get()->toArray());die;
		return self::$model::where('category_id', 1)->get()->toArray();
	}

	public static function getOne(String $id): Model{
		return self::$model::find($id);
	}

	public static function destroy($id): Model{
		$model = self::$model::find($id);
		$model->delete();
		return $model;
	}
}