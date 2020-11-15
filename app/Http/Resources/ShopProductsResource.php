<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ShopProductsResource extends JsonResource
{
    private $shop_product;

    public function __construct($resource, $shop_product) {
        parent::__construct($resource);
        $this->shop_product = $shop_product;
    }

    public function toArray($request)
    {
        return parent::toArray($request);
    }
}
