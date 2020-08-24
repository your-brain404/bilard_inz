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
		$slider->photo = $request->input('photo');

		return $slider;
	}

	public static function saveData(Request $request) {
		var_dump($request->input('title')); die;
		$slider = $request->isMethod('put') ? Slider::find($request->input('id')) : new Slider;
		$slider = self::prependData($slider, $request);

		if ($slider->save()) {
			return $slider;
		}
	}

	public static function getAll(){
		return Slider::all();
	}

	public static function getOne($id){
		return Slider::find($id);
	}

	public static function destroy($id){
		$slider = Slider::find($id);
		$slider->delete();
		return $slider;
	}
}