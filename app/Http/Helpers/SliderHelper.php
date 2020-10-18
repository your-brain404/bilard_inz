<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\Slider;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class SliderHelper {

	private static function prependData(Request $request): array {
		return $request->all();
	}

	public static function saveData(Request $request): Slider{

		$slider = self::prependData($request);
		$slider = $request->isMethod('put') ? Slider::where('id', $request->input('id'))->first()->fill($slider) : Slider::create($slider);

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