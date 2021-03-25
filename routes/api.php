<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Str;
use App\Http\Helpers\DefaultCrudTables;

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



foreach (DefaultCrudTables::get() as $table) {
	$controller = ucfirst(Str::of($table)->camel()) . 'Controller';

	Route::get("/$table/get_all/", "$controller@getAll");
	Route::get("/$table/get_one/{id}", "$controller@getOne");
	Route::put("/$table/edit", "$controller@store")->middleware(['admin', 'auth:api']);
	Route::post("/$table/add/", "$controller@store")->middleware(['admin', 'auth:api']);
	Route::delete("/$table/delete/{id}", "$controller@destroy")->middleware(['admin', 'auth:api']);
	Route::get("/$table/get_where/", "$controller@getWhere");
}


Route::get('/news/get_pagination', 'NewsController@getPagination');

Route::get('/shop_products/get_pagination', 'ShopProductsController@getPagination');

Route::get('/media/get_photos/', 'MediaController@getPhotos');
Route::get('/media/get_files/', 'MediaController@getFiles');

Route::get('/ordered_products/get_where/', 'OrderedProductsController@getWhere');

Route::post('/avatars/add/', 'AvatarsController@store')->middleware('auth:api');

Route::post('/reservations/accept/', 'ReservationsController@accept')->middleware(['admin', 'auth:api']);

Route::post('/auth/register', 'Auth\api\RegisterController@register');
Route::post('/auth/login', 'Auth\api\LoginController@login');



Route::group(['middleware' => ['web']], function () {
	Route::get('/facebook/login', 'Auth\api\LoginController@redirectToProvider');
	Route::get('/facebook/login/callback', 'Auth\api\LoginController@handleProviderCallback');
});

Route::get('facebook/login/get_token', 'Auth\api\LoginController@getToken');

Route::get('/gallery/get_photos/{table}/{id}', 'GalleryController@getPhotos');

Route::get('/users/get_commentators', 'UsersController@getCommentators');


Route::post('/mails/send/', 'MailsController@send');
Route::put('/mails/answer/', 'MailsController@store')->middleware(['admin', 'auth:api']);

Route::put('/users/edit', 'UsersController@store')->middleware(['auth:api', 'user.edit']);
Route::post('/users/password_reminder', 'UsersController@passwordReminder');
Route::post('/users/change_password', 'UsersController@changePassword');

Route::delete('/news_tags/delete/{id}', 'NewsTagsController@destroy')->middleware(['admin', 'auth:api']);
