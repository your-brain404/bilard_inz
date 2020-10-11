<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\SubpagesResource;
use App\Http\Helpers\SubpagesHelper;

class SubpagesController extends Controller
{
    public function getAll() {
		$offers = SubpagesHelper::getAll();
		return new SubpagesResource($offers);
	}

	public function getOne($id) {
		$offers = SubpagesHelper::getOne($id);
		return new SubpagesResource($offers);
	}

	
	public function store(Request $request) {
		$offers = SubpagesHelper::saveData($request);
		return new SubpagesResource($offers);
	}

	
	public function destroy($id) {
		$offers = SubpagesHelper::destroy($id);
		return new SubpagesResource($offers); 
	}
}
