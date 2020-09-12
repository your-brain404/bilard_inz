<?php

namespace App\Http\Controllers;

use App\Http\Helpers\OffersHelper;
use App\Http\Resources\OffersResource;
use Illuminate\Http\Request;

class OffersController extends Controller
{
    public function getAll() {
		$offers = OffersHelper::getAll();
		return new OffersResource($offers);
	}

	public function getOne($id) {
		$offers = OffersHelper::getOne($id);
		return new OffersResource($offers);
	}

	
	public function store(Request $request) {
		$offers = OffersHelper::saveData($request);
		return new OffersResource($offers);
	}

	
	public function destroy($id) {
		$offers = OffersHelper::destroy($id);
		return new OffersResource($offers); 
	}
}
