<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class AvatarsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    protected $data;

    public function __construct($data) {
        $this->resource = [];
        $this->data = $data;
    }

    public function toArray($request)
    {
        return ['avatar' => $this->data];
    }
}
