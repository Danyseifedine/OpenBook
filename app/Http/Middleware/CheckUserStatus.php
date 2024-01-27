<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class CheckUserStatus
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if (auth()->check() && Auth::user()->active == 'inactive') {
            Auth::logout();

            $response = redirect()->route('home')->with('inactive', 'Your account is inactive. Contact the administrator.');

            $response->headers->set('Cache-Control', 'no-store, no-cache, must-revalidate, max-age=0');

            return $response;
        } else {
            return $next($request);
        }
    }
}
