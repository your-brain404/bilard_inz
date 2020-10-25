<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LiveBroadcasts extends Model
{
    protected $table = 'live_broadcasts';

    protected $fillable = ['title', 'subtitle', 'link', 'active'];

}
