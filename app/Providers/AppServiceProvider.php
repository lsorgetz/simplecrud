<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

 // Acrescentado para inserção do botão Ativar/Desativar [B]READ
use Voyager;
use App\Actions\TrocarStatusAction;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */

    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // Inserção do botão Ativar/Desativar BREAD
        Voyager::addAction(TrocarStatusAction::class);
    }
}
