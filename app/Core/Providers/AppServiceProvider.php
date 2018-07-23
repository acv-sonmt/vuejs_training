<?php

namespace App\Core\Providers;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\ServiceProvider;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //Custom to logs query form database
        if(Config::get('database.logs')=='true'){
            DB::listen(function($query) {
                Log::channel('sql_query')->debug(
                    $query->sql,
                    $query->bindings,
                    $query->time
                );
            });
        }
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        // Register services
    }
}
