<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DocumentsDescriptions extends Model
{
	protected $table = 'documents_descriptions';
	
    protected $guarded = ['id']; 
}
