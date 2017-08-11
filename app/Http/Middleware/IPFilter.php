<?php

namespace App\Http\Middleware;

use Closure;

class IPFilter
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if($request->ip() == null){
            throw new \Exception("IP address not set");
        }

//        $ipAddress = $request->ip();
        $ipAddress = '118.71.224.247';

        $info = file_get_contents('http://ip-api.com/json/' . $ipAddress);

        $info = json_decode($info);

        if ($info->countryCode != 'VN') {
            throw new \Exception("SERVICE NOT AVAILABLE IN YOUR REGION");
        }

        return $next($request);
    }
}
