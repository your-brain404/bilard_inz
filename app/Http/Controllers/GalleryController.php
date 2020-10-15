<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\GalleryResource;
use App\Http\Helpers\GalleryHelper;

class GalleryController extends Controller
{
    public function getPhotos($table, $id) {
		$gallery = GalleryHelper::getPhotos($table, $id);
		return new GalleryResource($gallery);
	}

	public function getOne($id) {
		$gallery = GalleryHelper::getOne($id);
		return new GalleryResource($gallery);
	}

	public function store(Request $request) {
		$gallery = GalleryHelper::saveData($request);
		return new GalleryResource($gallery);
	}

	
	public function destroy($id) {
		$gallery = GalleryHelper::destroy($id);
		return new GalleryResource($gallery); 
	}
}
