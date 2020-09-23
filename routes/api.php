<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
 */

Route::middleware('auth:api')->get('/user', function (Request $request) {
	return $request->user();
});

Route::get('/about_us/get_all/', 'AboutUsController@getAll');
Route::get('/about_us/get_one/{id}', 'AboutUsController@getOne');
Route::put('/about_us/edit', 'AboutUsController@store');

Route::get('/slider/get_all', 'SliderController@getAll');
Route::get('/slider/get_one/{id}', 'SliderController@getOne');
Route::post('/slider/add/', 'SliderController@store');
Route::delete('/slider/delete/{id}', 'SliderController@destroy');
Route::put('/slider/edit', 'SliderController@store');

Route::get('/offers/get_all', 'OffersController@getAll');
Route::get('/offers/get_one/{id}', 'OffersController@getOne');
Route::post('/offers/add/', 'OffersController@store');
Route::delete('/offers/delete/{id}', 'OffersController@destroy');
Route::put('/offers/edit', 'OffersController@store');

Route::get('/news/get_all', 'NewsController@getAll');
Route::get('/news/get_one/{id}', 'NewsController@getOne');
Route::post('/news/add/', 'NewsController@store');
Route::delete('/news/delete/{id}', 'NewsController@destroy');
Route::put('/news/edit', 'NewsController@store');

Route::get('/media/get_photos/', 'MediaController@getPhotos');
Route::post('/media/add/', 'MediaController@store');
Route::delete('/media/delete/{id}', 'MediaController@destroy');

Route::post('/auth/register', 'Auth\api\RegisterController@register');
Route::post('/auth/login', 'Auth\api\LoginController@login');
