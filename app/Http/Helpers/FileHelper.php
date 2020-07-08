<?php
namespace App\Http\Helpers;

use App\Media;
use Illuminate\Http\File;
use Illuminate\Support\Facades\Storage;

class FileHelper {

	private $name;

	public static function store($file, $destination) {
		$path = getPath($file);

		Storage::putFileAs($destination, new File($file), $path);

		storeToMedia($file, $path);

		return $destination . $path;
	}

	private function getPath($file) {
		$fileNameWithExt = $file->getClientOriginalName();
		$this->name = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
		$extension = $file->getClientOriginalExtension();
		$path = $this->name . '_' . time() . '.' . $extension;

		return $path;
	}

	private function storeToMedia($file, $path) {
		$media = new Media;
		$media->path = $path;
		$media->name = $this->name;
		$media->size = $file['size'];
		$media->type = $file['type'];

		$media->save();
	}

}