<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ResponseResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    protected $data;

    public function __construct($data) {
        $this->data = $data;
    }

    public function toArray($request)
    {
        return $this->data;
    }
}
