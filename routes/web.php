<?php

use Illuminate\Support\Facades\Route;
use App\Mail\ConfirmEmail;
use App\User;

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

Auth::routes();

Route::get('/', 'HomeController@index');
Route::get('/auth/confirm_account/{id}', 'UserController@confirm');
Route::get('/email', function() {
	return new ConfirmEmail(User::find(22));
});

Route::get('/{catch?}', 'HomeController@index')->where('catch', '^(?!api).*$');

