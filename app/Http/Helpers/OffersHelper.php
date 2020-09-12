<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\Offers;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class OffersHelper {

	private static function prependData(Offers $offers, Request $request): Offers {

		$offers->title = $request->input('title');
		$offers->subtitle = $request->input('subtitle');
		$offers->photo_alt = $request->input('photo_alt');
		$offers->photo = $request->input('photo');
		$offers->description = $request->input('description');

		return $offers;
	}

	public static function saveData(Request $request): Offers{

		$offers = $request->isMethod('put') ? Offers::find($request->input('id')) : new Offers;
		$offers = self::prependData($offers, $request);

		if ($offers->save()) {

			return $offers;
		}
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