<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mails extends Model
{
    protected $table = 'mails';

    protected $fillable = ['phone', 'email', 'message', 'subject', 'name', 'rodo1', 'rodo2', 'attachment', 'answer'];

    protected $hidden = ['file'];
}
