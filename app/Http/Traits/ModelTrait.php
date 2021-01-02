<?php 

namespace App\Http\Traits;

trait ModelTrait {

	public function getTableName($class): String {
		return @implode('_', array_splice(array_map(function($el) {
			return strtolower($el);
		},preg_split('/(?=[A-Z])/', str_replace('App\\', '', $class))), 1));
	}

}