<?php
namespace App\Http\Helpers;

use App\Http\Helpers\WebpHelper;
use App\Media;
use Illuminate\Http\File;
use Illuminate\Support\Facades\Storage;

class FileHelper {

	private static $name;
	private static $webpTypes = array('image/jpg', 'image/jpeg', 'image/png', 'image/jfif', 'application/octet-stream');

	private static function getPath($file) {

		$fileNameWithExt = $file->getClientOriginalName();
		self::$name = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
		$extension = $file->getClientOriginalExtension();
		$path = self::$name . '_' . time() . '.' . $extension;

		return $path;
	}

	private static function storeToMedia($file, $path) {

		$media = new Media;
		$media->path = $path;
		$media->name = self::$name;
		$media->size = $file->getSize();
		$media->type = $file->getClientMimeType();

		$media->save();
	}

	public static function store($file, $destination) {

		$path = self::getPath($file);

		Storage::putFileAs($destination, new File($file), $path);
		$full_path = '../storage/' . $destination . $path;

		if (in_array($file->getClientMimeType(), self::$webpTypes)) {
			WebpHelper::convertToWebp($destination, $path);
			$full_path .= '.webp';
		}

		self::storeToMedia($file, $full_path);

		return $full_path;
	}
}