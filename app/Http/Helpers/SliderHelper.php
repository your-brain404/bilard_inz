<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\Slider;
use Illuminate\Http\Request;

class SliderHelper {

	private static function prependData(Slider $slider, Request $request) {

		$slider->title = $request->input('title');
		$slider->subtitle = $request->input('subtitle');
		$slider->photo_alt = $request->input('photo_alt');

		return $slider;
	}

	public static function saveData(Request $request) {
		$slider = $request->isMethod('put') ? Slider::findOrFail($request->id) : new Slider;
		$slider = self::prependData($slider, $request);

		if ($slider->save()) {
			return $slider;
		}
	}
}