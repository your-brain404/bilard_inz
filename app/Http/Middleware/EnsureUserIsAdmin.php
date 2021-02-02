<?php

namespace App\Http\Middleware;

use Closure;
use App\Http\Services\TokenDecoder;
use App\User;

class EnsureUserIsAdmin
{
    public function handle($request, Closure $next)
    {
        $user_settings = include base_path(). '/config/user.php';

        if(in_array(User::find(TokenDecoder::decode($request)->sub)->type, $user_settings['normal_types'])) {
            return redirect('/');
        } 

        return $next($request);
        
    }
}
