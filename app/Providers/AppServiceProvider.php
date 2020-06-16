<?php

namespace App\Providers;

use App\Admin;

use App\Models\Category;
use App\Models\Contact;
use App\Models\Language;
use App\Models\Order;
use App\User;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\Models\Setting;

use Auth;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        view()->composer('*', function ($view) 
        {


            //...with this variable
            $view->with([
            'setting' => Setting::query()->first(),
            'locales'=> Language::all(),
            'admin'=>Admin::first(),
            'contact'=> Contact::where('read',0)->count(),
            'count_orders'=> Order::where('status',-1)->count(),
            'count_categories'=> Category::count(),
            'users_count'=>User::count(),

        ]);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}

