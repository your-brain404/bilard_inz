<?php

namespace App\Http\Controllers;

use App\Http\Helpers\PartnersHelper;
use App\Http\Resources\PartnersResource;
use Illuminate\Http\Request;

class PartnersController extends Controller
{
    public function getAll() {
		$partners = PartnersHelper::getAll();
		return new PartnersResource($partners);
	}

	public function getOne($id) {
		$partners = PartnersHelper::getOne($id);
		return new PartnersResource($partners);
	}

	public function store(Request $request) {
		$partners = PartnersHelper::saveData($request);
		return new PartnersResource($partners);
	}

	
	public function destroy($id) {
		$partners = PartnersHelper::destroy($id);
		return new PartnersResource($partners); 
	}
}
