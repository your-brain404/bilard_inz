<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\AboutUs;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class AboutUsHelper {

	private static function prependData(Request $request): array {

		$about_us = $request->all();
		if($about_us['id']) unset($about_us['id']);
		if($about_us['created_at']) unset($about_us['created_at']);
		if($about_us['updated_at']) unset($about_us['updated_at']);

		return $about_us;
	}

	public static function saveData(Request $request): AboutUs {
		$about_us = self::prependData($request);
		$about_us = $request->isMethod('put') ? AboutUs::where('id', $request->input('id'))->first()->fill($about_us) : AboutUs::create($about_us);

		if ($about_us->save()) {

			return $about_us;
		}
	}

	

	public static function getAll(): Collection{
		return AboutUs::all();
	}

	public static function getOne(String $id): AboutUs{
		return AboutUs::find($id);
	}

	public static function destroy(String $id): AboutUs{
		$about_us = AboutUs::find($id);
		$about_us->delete();
		return $about_us;
	}
}