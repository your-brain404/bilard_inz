<?php

namespace App\Http\Controllers;

use App\Http\Resources\MediaResource;
use App\Media;

class MediaController extends Controller {
	public function getPhotos() {
		$photos = Media::where('type', 'image/jpeg')->orWhere('type', 'image/jpg')->orWhere('type', 'image/png')->orWhere('type', 'image/bmp')->orWhere('type', 'application/octet-stream')->orWhere('type', 'image/jfif')->get();
		return new MediaResource($photos);
	}
}
