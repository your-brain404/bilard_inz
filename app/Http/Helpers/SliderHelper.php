<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\Slider;
use Illuminate\Http\Request;

class SliderHelper {

	private static function prependPostData(Slider $slider, Request $request) {

		$slider->title = $request->input('title');
		$slider->subtitle = $request->input('subtitle');
		$slider->photo_alt = $request->input('photo_alt');
		$slider->photo = $request->input('photo');

		return $slider;
	}

	private static function prependPutData($slider, $data){
		$slider->title = $data->title;
		$slider->subtitle = $data->subtitle;
		$slider->photo_alt = $data->photo_alt;
		$slider->photo = $data->photo;

		return $slider;

	}

	public static function saveData(Request $request) {

		if($request->isMethod('put')){
			var_dump($request->all());die;
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