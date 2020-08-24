<?php

namespace App\Http\Controllers;

use App\Http\Helpers\SliderHelper;
use App\Http\Resources\SliderResource;
use Illuminate\Http\Request;

class SliderController extends Controller {
	
	public function getAll() {
		$slider = SliderHelper::getAll();
		return new SliderResource($slider);
	}

	public function getOne($id) {
		$slider = SliderHelper::getOne($id);
		return new SliderResource($slider);
	}

	
	public function store(Request $request) {

		$slider = SliderHelper::saveData($request);
		return new SliderResource($slider);
	}

	
	public function destroy($id) {
		$slider = SliderHelper::destroy($id);
		return new SliderResource($slider); 
	}
}
