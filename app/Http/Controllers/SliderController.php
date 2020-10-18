<?php

namespace App\Http\Controllers;

use App\Http\Helpers\SliderHelper;
use App\Http\Helpers\CrudHelper;
use App\Http\Resources\SliderResource;
use Illuminate\Http\Request;

class SliderController extends Controller {

	public function __construct() {
		new CrudHelper('App\Slider');
	}
	
	public function getAll() {
		$slider = CrudHelper::getAll();
		return new SliderResource($slider);
	}

	public function getOne($id) {
		$slider = SliderHelper::getOne($id);
		return new SliderResource($slider);
	}

	
	public function store(Request $request) {
		$slider = CrudHelper::saveData($request, 'App\Slider');
		return new SliderResource($slider);
	}

	
	public function destroy($id) {
		$slider = SliderHelper::destroy($id);
		return new SliderResource($slider); 
	}
}
