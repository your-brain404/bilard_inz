<?php

namespace App\Http\Controllers;

use App\Http\Resources\AboutUsResource;
use App\Http\Helpers\AboutUsHelper;
use Illuminate\Http\Request;

class AboutUsController extends Controller {

	public function getAll() {
		$about_us = AboutUsHelper::getAll();
		return new AboutUsResource($about_us);
	}

	public function getOne($id) {
		$about_us = AboutUsHelper::getOne($id);
		return new AboutUsResource($about_us);
	}

	public function store(Request $request) {
		$about_us = AboutUsHelper::saveData($request);
		return new AboutUsResource($about_us);
	}
}
