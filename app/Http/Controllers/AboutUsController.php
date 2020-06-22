<?php

namespace App\Http\Controllers;
use App\AboutUs;
use App\Http\Resources\AboutUsResource;
use Illuminate\Routing\Controller as BaseController;

class AboutUsController extends BaseController {

	public function getAll() {
		$about_us = AboutUs::all();
		return new AboutUsResource($about_us);
	}
}
