<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\Subpages;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class SubpagesHelper {

	private static function prependData(Subpages $subpages, Request $request): Subpages {

		$subpages->title = $request->input('title');
		$subpages->page = $request->input('page');
		$subpages->photo = $request->input('photo');
		$subpages->photo_alt = $request->input('photo_alt');

		return $subpages;
	}

	public static function saveData(Request $request): Subpages{

		$subpages = $request->isMethod('put') ? Subpages::find($request->input('id')) : new Subpages;
		$subpages = self::prependData($subpages, $request);

		if ($subpages->save()) {

			return $subpages;
		}
	}

	

	public static function getAll(): Collection{
		return Subpages::all();
	}

	public static function getOne(String $id): Subpages{
		return Subpages::find($id);
	}

	public static function destroy($id): Subpages{
		$subpages = Subpages::find($id);
		$subpages->delete();
		return $subpages;
	}
}