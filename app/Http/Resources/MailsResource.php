<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class MailsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public $data;

    public function toArray($request)
    {
        return parent::toArray($request);
    }

    public function with($request) {
        return $this->data;
    }
}
