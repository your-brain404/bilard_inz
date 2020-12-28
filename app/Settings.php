<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Settings extends Model
{
    protected $fillable = ['rodo_1', 'rodo_2', 'recaptcha_secret_token', 'recaptcha_site_token', 'photo', 'photo_alt', 'company', 'meta_keywords', 'privace_policy', 'shop_regulations', 'description'];
}
