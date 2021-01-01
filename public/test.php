<?php

$str = 'DupaBladaJasnaCiasna';

var_dump(@implode('_', array_splice(array_map(function($el) {
			return strtolower($el);
		},preg_split('/(?=[A-Z])/',$str)), 1)));

?>