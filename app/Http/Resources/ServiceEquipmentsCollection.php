<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;

class ServiceEquipmentsCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        for($i=0 ; $i<$this->count() ; $i++) {
            $this->collection[$i]->service;
        }

        return parent::toArray($request);
    }
}
