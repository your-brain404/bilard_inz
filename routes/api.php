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

$default_crud_tables = ['about_us', 'subpages', 'partners', 'live_broadcasts', 'reservations', 'services', 'service_equipments', 'history', 'players', 'cups', 'slider', 'price_list', 'price_list_categories', 'offers', 'news', 'users', 'mails', 'attachments', 'gallery', 'media'];

foreach ($default_crud_tables as $table) {
	$controller = implode('', array_map(function($segment) {
		return ucfirst($segment);
	}, explode('_', $table))) . 'Controller';

	Route::get("/$table/get_all/", "$controller@getAll");
	Route::get("/$table/get_one/{id}", "$controller@getOne");
	Route::put("/$table/edit", "$controller@store");
	Route::post("/$table/add/", "$controller@store");
	Route::delete("/$table/delete/{id}", "$controller@destroy");
	Route::get("/$table/get_where/", "$controller@getWhere");
}


Route::get('/news/get_pagination', 'NewsController@getPagination'); //paginacja

Route::get('/media/get_photos/', 'MediaController@getPhotos'); //niestandardowy

Route::post('/avatars/add/', 'AvatarsController@store'); //niestandard

Route::post('/auth/register', 'Auth\api\RegisterController@register'); //niestandard
Route::post('/auth/login', 'Auth\api\LoginController@login'); //niestandard



Route::group(['middleware' => ['web']], function () {  //niestandard
	Route::get('/facebook/login', 'Auth\api\LoginController@redirectToProvider'); //niestandard
	Route::get('/facebook/login/callback', 'Auth\api\LoginController@handleProviderCallback'); //niestandard
}); //niestandard

Route::get('facebook/login/get_token', 'Auth\api\LoginController@getToken'); //niestandard

Route::get('/gallery/get_photos/{table}/{id}', 'GalleryController@getPhotos'); //niestandard


Route::post('/mails/send/', 'MailsController@send'); //niestandard
Route::put('/mails/answer/', 'MailsController@store'); //niestandard



