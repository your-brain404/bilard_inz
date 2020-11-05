<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ReservationsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    private $service_equipment;

    public function __construct($resource, $service_equipment) {
        parent::__construct($resource);
        $this->service_equipment = $service_equipment;
    }
    
    public function toArray($request)
    {
        return parent::toArray($request);
    }
}
