<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class CrudHelper {

	private static $model;

	public function __construct(String $model) {
		self::$model = $model;
	}

	private static function prependData(Request $request): array {
		return $request->all();
	}

	public static function saveData(Request $request, String $model): Model{

		$data = self::prependData($request);
		$model = $request->isMethod('put') ? self::$model::where('id', $request->input('id'))->first()->fill($data) : self::$model::create($data);

		if ($model->save()) {

			return $model;
		}
	}

	

	public static function getAll(): Collection{
		return self::$model::all();
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