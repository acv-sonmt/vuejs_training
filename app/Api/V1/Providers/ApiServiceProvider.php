<?php
/**
 * @author thanhnv
 */
namespace App\Api\V1\Providers;

use App\Api\V1\Services\Interfaces\UserServiceInterface;
use App\Api\V1\Services\Production\UserService;
use Illuminate\Support\ServiceProvider;
class ApiServiceProvider extends ServiceProvider
{
    protected $services = [
        UserServiceInterface::class=>UserService::class
    ];
    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        // Register services
        foreach ($this->services as $inteface => $service) {
            $this->app->singleton($inteface, $service);
        }
    }
}
