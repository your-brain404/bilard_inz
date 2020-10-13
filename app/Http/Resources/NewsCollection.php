<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;
use App\Http\Resources\NewsResource;

class NewsCollection extends ResourceCollection
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */

    public function toArray($request) {
    	for($i=0 ; $i<$this->count() ; $i++) {
    		// $this->collection[$i]->tags;
    	}

    	return parent::toArray($request);
    }

    

    
}
