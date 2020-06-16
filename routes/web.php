<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*
Route::get('/', function () {
    return view('website.index');
});
*/

Route::group([
    'prefix' => LaravelLocalization::setLocale(),
    'middleware' => [
        'localeSessionRedirect',
        'localizationRedirect',
        'localeViewPath'
    ]
], function () {
    
    Route::get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm');
    Route::post('password/reset', 'Auth\ResetPasswordController@reset')->name('password.request');
    Route::get('/', 'WEB\Site\SiteController@index')->name('home');
    Route::get('reset_successfully', 'WEB\Site\SiteController@success');
  //Route::get('/home', 'WEB\Site\SiteController@index')->name('home');
    //Route::post('contact_us', 'WEB\Site\SiteController@sendContact');

    // Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('password.email');
    // Route::post('password/reset', 'Auth\ResetPasswordController@reset');
    // Route::post('/login', 'Auth\LoginController@login')->name('login');



    /** ADD ALL LOCALIZED ROUTES INSIDE THIS GROUP **/

    Route::get('logout', 'Auth\LoginController@logout')->name('logout');


    //Auth::routes();


    //ADMIN AUTH ///

    Route::group(['prefix' => 'admin'], function () {
        Route::get('/', function () {
            return route('/login');
        });


        Route::get('/login', 'AdminAuth\LoginController@showLoginForm')->name('admin.login.form');
        Route::post('/login', 'AdminAuth\LoginController@login')->name('admin.login');
        Route::post('/logout', 'AdminAuth\LoginController@logout')->name('admin.logout');
      //  Route::get('/password/reset', 'AdminAuth\ForgotPasswordController@showLinkRequestForm')->name('admin.password.reset');
     //   Route::post('/password/email', 'AdminAuth\ForgotPasswordController@send_email')->name('admin.password.email');
    });






    Route::group(['middleware' => ['web', 'admin'], 'prefix' => 'admin', 'as' => 'admin.',], function () {
        Route::get('/', function () {
            return redirect('/admin/home');
        });
        Route::post('/changeStatus/{model}', 'WEB\Admin\HomeController@changeStatus');

        Route::get('home', 'WEB\Admin\HomeController@index')->name('admin.home');

        Route::get('/admins/{id}/edit', 'WEB\Admin\AdminController@edit')->name('admins.edit');
        Route::patch('/admins/{id}', 'WEB\Admin\AdminController@update')->name('users.update');
        Route::get('/admins/{id}/edit_password', 'WEB\Admin\AdminController@edit_password')->name('admins.edit_password');
        Route::post('/admins/{id}/edit_password', 'WEB\Admin\AdminController@update_password')->name('admins.edit_password');

        if (can('admins')) {
            Route::get('/admins', 'WEB\Admin\AdminController@index')->name('admins.all');
            Route::post('/admins/changeStatus', 'WEB\Admin\AdminController@changeStatus')->name('admin_changeStatus');

            Route::delete('admins/{id}', 'WEB\Admin\AdminController@destroy')->name('admins.destroy');

            Route::post('/admins', 'WEB\Admin\AdminController@store')->name('admins.store');
            Route::get('/admins/create', 'WEB\Admin\AdminController@create')->name('admins.create');
        }

        if (can('users')) {
            Route::get('/users', 'WEB\Admin\UsersController@index')->name('users.all');
            Route::post('/users', 'WEB\Admin\UsersController@store')->name('users.store');
            Route::get('/users/create', 'WEB\Admin\UsersController@create')->name('users.create');
            Route::delete('users/{id}', 'WEB\Admin\UsersController@destroy')->name('users.destroy');
            Route::get('/users/{id}/edit', 'WEB\Admin\UsersController@edit')->name('users.edit');
            Route::patch('/users/{id}', 'WEB\Admin\UsersController@update')->name('users.update');
            Route::get('/users/{id}/edit_password', 'WEB\Admin\UsersController@edit_password')->name('users.edit_password');
            Route::post('/users/{id}/edit_password', 'WEB\Admin\UsersController@update_password')->name('users.edit_password');
            Route::post('/emailCustomer', 'WEB\Admin\UsersController@emailCustomer');
        }
        if (can('employee')) {
            Route::get('/employee', 'WEB\Admin\EmployeeController@index')->name('employee.all');
            Route::post('/employee', 'WEB\Admin\EmployeeController@store')->name('employee.store');
            Route::get('/employee/create', 'WEB\Admin\EmployeeController@create')->name('employee.create');
            Route::delete('employee/{id}', 'WEB\Admin\EmployeeController@destroy')->name('employee.destroy');
            Route::get('/employee/{id}/edit', 'WEB\Admin\EmployeeController@edit')->name('employee.edit');
            Route::patch('/employee/{id}', 'WEB\Admin\EmployeeController@update')->name('employee.update');
            Route::get('/employee/{id}/edit_password', 'WEB\Admin\EmployeeController@edit_password')->name('employee.edit_password');
            Route::post('/employee/{id}/edit_password', 'WEB\Admin\EmployeeController@update_password')->name('employee.edit_password');
            Route::post('/emailCustomer', 'WEB\Admin\EmployeeController@emailCustomer');
        }
        if (can('executive')) {
            Route::get('/executive', 'WEB\Admin\ExecutiveController@index')->name('executive.all');
            Route::post('/executive', 'WEB\Admin\ExecutiveController@store')->name('executive.store');
            Route::get('/executive/create', 'WEB\Admin\ExecutiveController@create')->name('executive.create');
            Route::delete('executive/{id}', 'WEB\Admin\ExecutiveController@destroy')->name('executive.destroy');
            Route::get('/executive/{id}/edit', 'WEB\Admin\ExecutiveController@edit')->name('executive.edit');
            Route::patch('/executive/{id}', 'WEB\Admin\ExecutiveController@update')->name('executive.update');
            Route::get('/executive/{id}/edit_password', 'WEB\Admin\ExecutiveController@edit_password')->name('executive.edit_password');
            Route::post('/executive/{id}/edit_password', 'WEB\Admin\ExecutiveController@update_password')->name('executive.edit_password');
            Route::post('/emailCustomer', 'WEB\Admin\ExecutiveController@emailCustomer');
        }
        if (can('supplier')) {
            Route::get('/supplier', 'WEB\Admin\SupplierController@index')->name('supplier.all');
            Route::post('/supplier', 'WEB\Admin\SupplierController@store')->name('supplier.store');
            Route::get('/supplier/create', 'WEB\Admin\SupplierController@create')->name('supplier.create');
            Route::delete('supplier/{id}', 'WEB\Admin\SupplierController@destroy')->name('supplier.destroy');
            Route::get('/supplier/{id}/edit', 'WEB\Admin\SupplierController@edit')->name('supplier.edit');
            Route::patch('/supplier/{id}', 'WEB\Admin\SupplierController@update')->name('supplier.update');
            Route::get('/supplier/{id}/edit_password', 'WEB\Admin\SupplierController@edit_password')->name('supplier.edit_password');
            Route::post('/supplier/{id}/edit_password', 'WEB\Admin\SupplierController@update_password')->name('supplier.edit_password');
            Route::post('/emailCustomer', 'WEB\Admin\SupplierController@emailCustomer');
        }

        if (can('categories')) {
            Route::resource('/categories', 'WEB\Admin\CategoriesController');
        }

        if (can('companies')) {
            Route::resource('/companies', 'WEB\Admin\CompaniesController');
        }
        
        if (can('calibers')) {
            Route::resource('/calibers', 'WEB\Admin\CaliberController');
        }

        if (can('oils')) {
            Route::resource('/oils', 'WEB\Admin\OilController');
        }



        if (can('size')) {
            Route::resource('/sizes', 'WEB\Admin\SizesController');
        }





        if (can('contact_us')) {
            Route::get('/contact', 'WEB\Admin\ContactController@index');
            Route::get('/viewMessage/{id}', 'WEB\Admin\ContactController@viewMessage');
            Route::delete('/contact/{id}', 'WEB\Admin\ContactController@destroy');
        }



        if (can('settings')) {
            Route::get('settings', 'WEB\Admin\SettingController@index')->name('settings.all');
            Route::post('settings', 'WEB\Admin\SettingController@update')->name('settings.update');
        }


        if(can('pages'))
        {
            Route::resource('/pages', 'WEB\Admin\PagesController');
            Route::post('/pages/changeStatus', 'WEB\Admin\PagesController@changeStatus');
        }

        if (can('inOrders')) {
            Route::resource('inOrders', 'WEB\Admin\OrdersController');
            Route::get('inOrders/orderDetails/{id}', 'WEB\Admin\OrdersController@orderDetails');
            Route::post('/change_orderSts/{id}', 'WEB\Admin\OrdersController@change_orderSts');
            Route::get('inOrders/printOrder/{id}', 'WEB\Admin\OrdersController@printOrder');
        }
        if (can('outOrders')) {
            Route::resource('outOrders', 'WEB\Admin\OutOrdersController');
            Route::get('outOrders/orderDetails/{id}', 'WEB\Admin\OutOrdersController@orderDetails');
            Route::post('/change_orderSts/{id}', 'WEB\Admin\OutOrdersController@change_orderSts');
            Route::get('outOrders/printOrder/{id}', 'WEB\Admin\OutOrdersController@printOrder');
        }
        if (can('debt')) {
            Route::resource('debt', 'WEB\Admin\DebtController');
            Route::get('debt/orderDetails/{id}', 'WEB\Admin\DebtController@orderDetails');
            Route::post('/change_orderSts/{id}', 'WEB\Admin\DebtController@change_orderSts');
            Route::get('debt/printOrder/{id}', 'WEB\Admin\DebtController@printOrder');
 }
        if (can('electricity')) {
            Route::resource('electricity', 'WEB\Admin\ElectricityController');
            Route::get('electricity/orderDetails/{id}', 'WEB\Admin\ElectricityController@orderDetails');
            Route::post('/change_orderSts/{id}', 'WEB\Admin\ElectricityController@change_orderSts');
            Route::get('electricity/printOrder/{id}', 'WEB\Admin\ElectricityController@printOrder');
        }

        if (can('rent')) {
            Route::resource('rent', 'WEB\Admin\RentController');
            Route::get('rent/orderDetails/{id}', 'WEB\Admin\RentController@orderDetails');
            Route::post('/change_orderSts/{id}', 'WEB\Admin\RentController@change_orderSts');
            Route::get('rent/printOrder/{id}', 'WEB\Admin\RentController@printOrder');
        }
        if (can('salary')) {
            Route::resource('salary', 'WEB\Admin\SalaryController');
            Route::get('salary/orderDetails/{id}', 'WEB\Admin\SalaryController@orderDetails');
            Route::post('/change_orderSts/{id}', 'WEB\Admin\SalaryController@change_orderSts');
            Route::get('salary/printOrder/{id}', 'WEB\Admin\SalaryController@printOrder');
        }
        
        if (can('notifications')) {

            Route::resource('/notifications', 'WEB\Admin\NotificationMessageController');
        }


        if(can('permissions'))
        {
            Route::resource('/role', 'WEB\Admin\RoleController');
        }
        
    });
    
    
        Route::get('/privacy', 'WEB\Site\PrivacyController@index');








});


