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

Route::get('/slider/get_all', 'SliderController@getAll');
Route::get('/slider/get_one/{id}', 'SliderController@getOne');
Route::post('/slider/add/', 'SliderController@store');
Route::delete('/slider/delete/{id}', 'SliderController@destroy');
Route::put('/slider/edit', 'SliderController@store');

Route::get('/media/get_photos/', 'MediaController@getPhotos');
Route::post('/media/add/', 'MediaController@store');
Route::delete('/media/delete/{id}', 'MediaController@destroy');
