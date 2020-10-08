<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;
use App\Http\Resources\NewsTagsCollection;

class NewsResource extends ResourceCollection
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */


    public function toArray($request)
    {
        $array = [];
        for($i=0 ; $i<$this->count() ; $i++) {
            array_push($array, [
                'id' => $this->collection[$i]->id,
                'title' => $this->collection[$i]->title,
                'category' => $this->collection[$i]->category,
                'button_name' => $this->collection[$i]->button_name,
                'short_description' => $this->collection[$i]->short_description,
                'description' => $this->collection[$i]->description,
                'photo' => $this->collection[$i]->photo,
                'photo_alt' => $this->collection[$i]->photo_alt,
                'banner_photo' => $this->collection[$i]->banner_photo,
                'banner_photo_alt' => $this->collection[$i]->banner_photo_alt,
                'tags' => $this->collection[$i]->tags,
                'created_at' => $this->collection[$i]->created_at,
                'updated_at' => $this->collection[$i]->updated_at,
            ]);
        }
        return $array;
    }

    
}
