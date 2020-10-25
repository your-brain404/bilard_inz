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

Route::get('/subpages/get_all/', 'SubpagesController@getAll');
Route::get('/subpages/get_one/{id}', 'SubpagesController@getOne');
Route::put('/subpages/edit', 'SubpagesController@store');
Route::post('/subpages/add/', 'SubpagesController@store');
Route::delete('/subpages/delete/{id}', 'SubpagesController@destroy');

Route::get('/partners/get_all/', 'PartnersController@getAll');
Route::get('/partners/get_one/{id}', 'PartnersController@getOne');
Route::put('/partners/edit', 'PartnersController@store');
Route::post('/partners/add/', 'PartnersController@store');
Route::delete('/partners/delete/{id}', 'PartnersController@destroy');
Route::get('/partners/get_where/', 'PartnersController@getWhere');

Route::get('/live_broadcasts/get_all/', 'LiveBroadcastsController@getAll');
Route::get('/live_broadcasts/get_one/{id}', 'LiveBroadcastsController@getOne');
Route::put('/live_broadcasts/edit', 'LiveBroadcastsController@store');
Route::post('/live_broadcasts/add/', 'LiveBroadcastsController@store');
Route::delete('/live_broadcasts/delete/{id}', 'LiveBroadcastsController@destroy');
Route::get('/live_broadcasts/get_where/', 'LiveBroadcastsController@getWhere');

Route::get('/history/get_all/', 'HistoryController@getAll');
Route::get('/history/get_one/{id}', 'HistoryController@getOne');
Route::put('/history/edit', 'HistoryController@store');
Route::post('/history/add/', 'HistoryController@store');
Route::delete('/history/delete/{id}', 'HistoryController@destroy');
Route::get('/history/get_where/', 'HistoryController@getWhere');

Route::get('/players/get_all/', 'PlayersController@getAll');
Route::get('/players/get_one/{id}', 'PlayersController@getOne');
Route::put('/players/edit', 'PlayersController@store');
Route::post('/players/add/', 'PlayersController@store');
Route::delete('/players/delete/{id}', 'PlayersController@destroy');
Route::get('/players/get_where/', 'PlayersController@getWhere');

Route::get('/cups/get_all/', 'CupsController@getAll');
Route::get('/cups/get_one/{id}', 'CupsController@getOne');
Route::put('/cups/edit', 'CupsController@store');
Route::post('/cups/add/', 'CupsController@store');
Route::delete('/cups/delete/{id}', 'CupsController@destroy');
Route::get('/cups/get_where/', 'CupsController@getWhere');

Route::get('/slider/get_all', 'SliderController@getAll');
Route::get('/slider/get_one/{id}', 'SliderController@getOne');
Route::post('/slider/add/', 'SliderController@store');
Route::delete('/slider/delete/{id}', 'SliderController@destroy');
Route::put('/slider/edit', 'SliderController@store');
Route::get('/slider/get_where/', 'SliderController@getWhere');

Route::get('/offers/get_all', 'OffersController@getAll');
Route::get('/offers/get_one/{id}', 'OffersController@getOne');
Route::post('/offers/add/', 'OffersController@store');
Route::delete('/offers/delete/{id}', 'OffersController@destroy');
Route::put('/offers/edit', 'OffersController@store');
Route::get('/offers/get_where/', 'OffersController@getWhere');

Route::get('/news/get_all', 'NewsController@getAll');
Route::get('/news/get_pagination', 'NewsController@getPagination');
Route::get('/news/get_one/{id}', 'NewsController@getOne');
Route::get('/news/get_where/', 'NewsController@getWhere');
Route::post('/news/add/', 'NewsController@store');
Route::delete('/news/delete/{id}', 'NewsController@destroy');
Route::put('/news/edit', 'NewsController@store');

Route::get('/media/get_photos/', 'MediaController@getPhotos');
Route::post('/media/add/', 'MediaController@store');
Route::delete('/media/delete/{id}', 'MediaController@destroy');

Route::post('/auth/register', 'Auth\api\RegisterController@register');
Route::post('/auth/login', 'Auth\api\LoginController@login');

Route::get('/users/get_one/{id}', 'UserController@getOne');
Route::get('/users/get_all', 'UserController@getAll');

Route::group(['middleware' => ['web']], function () {
	Route::get('/facebook/login', 'Auth\api\LoginController@redirectToProvider');
	Route::get('/facebook/login/callback', 'Auth\api\LoginController@handleProviderCallback');
});
Route::get('facebook/login/get_token', 'Auth\api\LoginController@getToken');

Route::get('/gallery/get_photos/{table}/{id}', 'GalleryController@getPhotos');
Route::post('/gallery/add', 'GalleryController@store');
Route::put('/gallery/edit', 'GalleryController@store');
Route::delete('/gallery/delete/{id}', 'GalleryController@destroy');

Route::get('/mails/get_all', 'MailsController@getAll');
Route::get('/mails/get_one/{id}', 'MailsController@getOne');
Route::post('/mails/add/', 'MailsController@store');
Route::delete('/mails/delete/{id}', 'MailsController@destroy');
