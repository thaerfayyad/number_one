<?php

use Illuminate\Http\Request;

//Auth::routes();
Route::group(['middleware' => 'auth:api'], function () {


    Route::post('/editProfile', 'API\UserController@editProfile');
    Route::post('/changePassword', 'API\UserController@changePassword');
    Route::post('/logout', 'API\UserController@logout');



Route::post('/newOrder','API\OrderController@newOrder');

Route::get('myNotifications', 'API\UserController@notifications');
});

//    AppController
Route::get('getCompany', 'API\AppController@getCompany');
Route::get('getCaliber', 'API\AppController@getCaliber');
Route::get('getSize', 'API\AppController@getSize');
Route::get('getAds', 'API\AppController@getAds');
Route::get('getSetting', 'API\AppController@getSetting');
Route::get('getCities', 'API\AppController@getCities');
Route::get('getCategories', 'API\AppController@getCategories');
Route::get('getEmployee', 'API\AppController@getEmployee');
Route::get('getExecutive', 'API\AppController@getExecutive');
Route::get('getSupplier', 'API\AppController@getSupplier');
Route::get('allQuestions', 'API\AppController@allQuestions');
Route::get('pages/{id}', 'API\AppController@pages');
Route::post('contactUs', 'API\AppController@contactUs');
Route::post('search', 'API\AppController@search');
Route::get('getOil', 'API\AppController@getOil');
Route::post('addOil', 'API\AppController@addOil');





//    UserController
Route::post('/login', 'API\UserController@login');
Route::post('/signUp', 'API\UserController@signUp');
Route::post('/forgotPassword','API\UserController@forgotPassword');











