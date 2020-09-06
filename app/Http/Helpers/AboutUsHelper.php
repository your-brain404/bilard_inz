<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\AboutUs;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class AboutUsHelper {

	private static function prependData(AboutUs $about_us, Request $request): AboutUs {

		$about_us->title = $request->input('title');
		$about_us->subtitle = $request->input('subtitle');
		$about_us->photo_alt = $request->input('photo_alt');
		$about_us->photo = $request->input('photo');

		return $about_us;
	}

	public static function saveData(Request $request): AboutUs {
		$about_us = $request->isMethod('put') ? AboutUs::find($request->input('id')) : new AboutUs;
		$about_us = self::prependData($about_us, $request);

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