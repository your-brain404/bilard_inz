<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\AboutUs;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class AboutUsHelper {

	private static function prependPostData(AboutUs $about_us, Request $request): AboutUs {

		$about_us->title = $request->input('title');
		$about_us->subtitle = $request->input('subtitle');
		$about_us->photo_alt = $request->input('photo_alt');
		$about_us->photo = $request->input('photo');

		return $about_us;
	}

	private static function prependPutData(AboutUs $about_us, Object $data): AboutUs{
		$about_us->title = $data->title;
		$about_us->subtitle = $data->subtitle;
		$about_us->photo_alt = $data->photo_alt;
		$about_us->photo = $data->photo;

		return $about_us;

	}

	public static function saveData(Request $request): AboutUs {

			
		if($request->isMethod('put')){
			$data = json_decode(array_keys($request->all())[0]);
			$about_us = AboutUs::find($data->id);
			$about_us = self::prependPutData($about_us, $data);

		} else{
			$about_us = new AboutUs;
			$about_us = self::prependPostData($about_us, $request);
		}

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