<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\Slider;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class SliderHelper {

	private static function prependPostData(Slider $slider, Request $request): Slider {

		$slider->title = $request->input('title');
		$slider->subtitle = $request->input('subtitle');
		$slider->photo_alt = $request->input('photo_alt');
		$slider->photo = $request->input('photo');

		return $slider;
	}

	private static function prependPutData(Slider $slider, Object $data): Slider{
		$slider->title = $data->title;
		$slider->subtitle = $data->subtitle;
		$slider->photo_alt = $data->photo_alt;
		$slider->photo = $data->photo;

		return $slider;

	}

	public static function saveData(Request $request): Slider{

		if($request->isMethod('put')){
			$data = json_decode(array_keys($request->all())[0]);
			$slider = Slider::find($data->id);
			$slider = self::prependPutData($slider, $data);

		} else{
			$slider = new Slider;
			$slider = self::prependPostData($slider, $request);
		}

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