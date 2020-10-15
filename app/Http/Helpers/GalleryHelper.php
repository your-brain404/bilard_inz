<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\Gallery;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class GalleryHelper {

	private static function prependData(Gallery $gallery, Request $request): Gallery {

		$gallery->path = $request->input('path');
		$gallery->table_name = $request->input('table_name');
		$gallery->item_id = $request->input('item_id');
		$gallery->photo_alt = $request->input('photo_alt');

		return $gallery;
	}

	public static function saveData(Request $request): Gallery {
		$gallery = $request->isMethod('put') ? Gallery::find($request->input('id')) : new Gallery;
		$gallery = self::prependData($gallery, $request);

		if ($gallery->save()) {

			return $gallery;
		}
	}

	

	public static function getPhotos($table, $id): Collection {
		return Gallery::where('table_name', $table)->where('item_id', $id)->get();
	}


	public static function destroy(String $id): Gallery{
		$gallery = Gallery::find($id);
		$gallery->delete();
		return $gallery;
	}
}