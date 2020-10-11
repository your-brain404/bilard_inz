<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class NewsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    private $tags;

    public function __construct($resource, $tags) {
        parent::__construct($resource);
        $this->tags = $tags;
    }

    public function toArray($request)
    {
        return parent::toArray($request);

    }

}
