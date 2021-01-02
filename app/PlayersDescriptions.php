<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Http\Helpers\ModelHelper;

class PlayersDescriptions extends Model
{
    protected $table;

	protected $guarded = ['id'];

	public function __construct() {
		$this->table = ModelHelper::getTable(__CLASS__);
	}
}
