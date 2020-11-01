<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ServiceEquipments extends Model
{
    protected $table ='service_equipments';

    protected $fillable = ['title', 'service_id', 'active'];
}
