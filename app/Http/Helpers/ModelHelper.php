<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\Gallery;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class ModelHelper {

	public static function getTable($class): String {
		return @implode('_', array_splice(array_map(function($el) {
			return strtolower($el);
		},preg_split('/(?=[A-Z])/', str_replace('App\\', '', $class))), 1));
	}
}