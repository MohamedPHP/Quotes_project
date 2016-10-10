<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/{author?}', [
    'uses'  =>  'QuoteController@getIndex',
    'as'    =>  'index'
]);
Route::post('/new', [
    'uses'  =>  'QuoteController@postQuote',
    'as'    =>  'create'
]);
Route::get('/delete/{quote_id}', [
    'uses'  =>  'QuoteController@getDelete',
    'as'    =>  'delete'
]);

Route::get('/gotmail/{author_name}', [
    'uses'  =>  'QuoteController@getMailCallback',
    'as'    =>  'mail.callback'
]);
Route::get('/admin/login', [
    'uses'  =>  'AdminController@getlogin',
    'as'    =>  'login'
]);
Route::get('/admin/logout', [
    'uses'  =>  'AdminController@getlogout',
    'as'    =>  'logout'
]);
Route::post('/admin/login', [
    'uses'  =>  'AdminController@postlogin',
    'as'    =>  'login'
]);

Route::get('/admin/dashboard', [
    'uses'  =>  'AdminController@getDashboard',
    'as'    =>  'dashboard'
]);
