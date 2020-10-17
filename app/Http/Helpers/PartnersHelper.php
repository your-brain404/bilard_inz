<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\Partners;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class PartnersHelper {

	private static function prependData(Partners $partners, Request $request): Partners {

		$partners->title = $request->input('title');
		$partners->description = $request->input('description');
		$partners->photo_alt = $request->input('photo_alt');
		$partners->photo = $request->input('photo');

		return $partners;
	}

	public static function saveData(Request $request): Partners {
		$partners = $request->isMethod('put') ? Partners::find($request->input('id')) : new Partners;
		$partners = self::prependData($partners, $request);

		if ($partners->save()) {

			return $partners;
		}
	}

	

	public static function getAll(): Collection{
		return Partners::all();
	}

	public static function getOne(String $id): Partners{
		return Partners::find($id);
	}

	public static function destroy(String $id): Partners{
		$partners = Partners::find($id);
		$partners->delete();
		return $partners;
	}
}