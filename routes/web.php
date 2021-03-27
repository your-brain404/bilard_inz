<?php

use Illuminate\Support\Facades\Route;
use App\Mail\ReservationAccept;
use App\Mail\ShippingConfirmation;
use App\Reservations;
use App\ShopOrders;

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

Route::get('/auth/confirm_account/{id}', 'UsersController@confirm');
Route::get('/product', function () {
    return new ShippingConfirmation(ShopOrders::find(26));
});
Route::get('/{catch?}', 'HomeController@index')->name('home')->where('catch', '^(?!api).*$');
