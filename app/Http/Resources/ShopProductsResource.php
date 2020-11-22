<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ShopProductsResource extends JsonResource
{
    public function __construct($resource) {
        parent::__construct($resource);
        $resource->category;
        $resource->color;
    }

    public function toArray($request)
    {
        return parent::toArray($request);
    }
}
