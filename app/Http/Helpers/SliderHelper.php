<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\Slider;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class SliderHelper {

	private static function prependData(Slider $slider, Request $request): Slider {

		$slider->title = $request->input('title');
		$slider->subtitle = $request->input('subtitle');
		$slider->photo_alt = $request->input('photo_alt');
		$slider->photo = $request->input('photo');

		return $slider;
	}

	public static function saveData(Request $request): Slider{

		$slider = $request->isMethod('put') ? Slider::find($request->input('id')) : new Slider;
		$slider = self::prependData($slider, $request);

		if ($slider->save()) {

			return $slider;
		}
	}

	

	public static function getAll(): Collection{
		return Slider::all();
	}

	public static function getOne(String $id): Slider{
		return Slider::find($id);
	}

	public static function destroy($id): Slider{
		$slider = Slider::find($id);
		$slider->delete();
		return $slider;
	}
}