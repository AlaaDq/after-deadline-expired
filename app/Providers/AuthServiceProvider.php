<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use Laravel\Passport\Passport;
class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();
        Passport::routes();

        //simple password grant
        Passport::personalAccessTokensExpireIn(now()->addMinutes(40));//manual way of creating token

        //for strict grant way
        // Passport::tokensExpireIn(now()->addMinutes(5));
        // Passport::refreshTokensExpireIn(now()->addDays(10));
        //
    }
}
