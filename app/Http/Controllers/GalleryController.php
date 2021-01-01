<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\GalleryResource;
use App\Http\Helpers\GalleryHelper;
use App\Http\Services\CrudService;

class GalleryController extends Controller
{
	public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}

    public function getPhotos($table, $id) {
		$gallery = GalleryHelper::getPhotos($table, $id);
		return new GalleryResource($gallery);
	}

	public function getOne($id) {
		$gallery = CrudService::getOne($id);
		return new GalleryResource($gallery);
	}

	public function store(Request $request) {
		$gallery = CrudService::saveData($request);
		return new GalleryResource($gallery);
	}

	
	public function destroy($id) {
		$gallery = CrudService::destroy($id);
		return new GalleryResource($gallery); 
	}
}
