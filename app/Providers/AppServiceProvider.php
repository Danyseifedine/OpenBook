<?php

namespace App\Providers;

use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useTailwind();
        Blade::directive('admin', function () {
            return "<?php if(auth()->user()->role === 1): ?>";
        });

        // Define the closing directive for @admin
        Blade::directive('endadmin', function () {
            return "<?php endif; ?>";
        });

        Blade::directive('moderator', function () {
            return "<?php if(auth()->user()->role === 2): ?>";
        });

        // Define the closing directive for @admin
        Blade::directive('endmoderator', function () {
            return "<?php endif; ?>";
        });

        Blade::directive('adminOrModerator', function ($role) {
            return "<?php if(auth()->user()->role === '$role'): ?>";
        });

        // Define the closing directive for @adminOrModerator
        Blade::directive('endadminOrModerator', function () {
            return "<?php endif; ?>";
        });


        Blade::directive('user', function () {
            return "<?php if(auth()->user()->role === 0): ?>";
        });

        // Define the closing directive for @admin
        Blade::directive('enduser', function () {
            return "<?php endif; ?>";
        });
    }
}
