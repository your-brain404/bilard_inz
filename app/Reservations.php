<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reservations extends Model
{
    protected $table = 'reservations';

    protected $fillable = ['entry', 'leave', 'earnings', 'is_paid', 'service_equipment_id'];
}
