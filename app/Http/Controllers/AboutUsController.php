<?php

namespace App\Http\Controllers;
use App\AboutUs;
use Illuminate\Routing\Controller as BaseController;

class AboutUsController extends BaseController {

	public function getAll() {
		$about_us = AboutUs::all();
		return $about_us->toJson();
	}
}
