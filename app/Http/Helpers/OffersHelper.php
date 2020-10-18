<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\Offers;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class OffersHelper {

	private static function prependData(Request $request) {

		$offers = $request->all();
		if($offers['id']) unset($offers['id']);
		if($offers['created_at']) unset($offers['created_at']);
		if($offers['updated_at']) unset($offers['updated_at']);

		return $offers;
	}

	public static function saveData(Request $request): Offers{

		$offers = self::prependData($request);
		$offers = $request->isMethod('put') ? Offers::where('id', $request->input('id'))->first()->fill($offers) : Offers::create($offers);

		if ($offers->save()) {

			return $offers;
		}
	}

	public static function getWhere(Request $request) {
		return Offers::where($request->all())->orderBy('created_at', 'desc')->get();
	}

	public static function getAll(): Collection{
		return Offers::all();
	}

	public static function getOne(String $id): Offers{
		return Offers::find($id);
	}

	public static function destroy($id): Offers{
		$offers = Offers::find($id);
		$offers->delete();
		return $offers;
	}
}