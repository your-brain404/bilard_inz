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

$default_crud_tables = ['about_us', 'subpages', 'partners', 'live_broadcasts', 'reservations', 'services', 'service_equipments', 'history', 'players', 'cups', 'slider', 'price_list', 'price_list_categories', 'offers', 'news', 'users', 'mails', 'attachments', 'gallery', 'media', 'shop_categories', 'shop_products', 'shop_items', 'shop_item_colors', 'delivery_options', 'shop_orders', 'documents', 'lucky_number', 'settings', 'contact', 'comments_descriptions', 'contact_descriptions', 'cups_descriptions', 'documents_descriptions', 'gallery_descriptions', 'history_descriptions', 'live_broadcasts_descriptions', 'news_descriptions', 'offers_descriptions', 'partners_descriptions', 'players_descriptions', 'price_list_descriptions', 'reservations_descriptions', 'calendar_descriptions', 'day_formats', 'shop_descriptions', 'cart_descriptions', 'breadcrumb_descriptions', 'layout_elements', 'drawer_descriptions', 'auth_descriptions', 'snackbar_alerts', 'validation_rules'];

foreach ($default_crud_tables as $table) {
	$controller = implode('', array_map(function($segment) {
		return ucfirst($segment);
	}, explode('_', $table))) . 'Controller';

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



