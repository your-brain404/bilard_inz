<?php

namespace App\Http\Controllers;

use App\Http\Resources\MediaResource;
use App\Media;
use App\Http\Helpers\FileHelper;
use Illuminate\Http\Request;

class MediaController extends Controller {

	public function getPhotos() {

		$photos = Media::where('type', 'image/jpeg')->orWhere('type', 'image/jpg')->orWhere('type', 'image/png')->orWhere('type', 'image/bmp')->orWhere('type', 'application/octet-stream')->orWhere('type', 'image/jfif')->get();
		return new MediaResource($photos);
	}

	public function store(Request $request){

		if(!$request->isMethod('post')) return new MediaResource(['message' => 'Wrong request method!']);
		else {
			$media = FileHelper::store($request->file('file'), 'media/'. date('Y-m-d') . '/');
			return new MediaResource($media);
		}
	}
}
