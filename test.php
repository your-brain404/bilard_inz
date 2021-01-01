<?php
$str = 'DupaBladaJasnaCiasna';

var_dump(array_map(function(el) {
return strtolower(el);
}, preg_split('/(?=[A-Z])/',$str)));
?>