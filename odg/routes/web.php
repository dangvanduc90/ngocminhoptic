<?php

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

Route::get('/', 'HomeController@index')->name('home');
Route::get('/khach-san.html', 'HomeController@listKS')->name('KS.list');
Route::get('/khach-san/{slug}.html', 'HomeController@detailKS')->name('KS.detail');
Route::get('/khach-san.html', 'HomeController@listKS')->name('KS.list');
Route::get('/voucher-combo.html', 'HomeController@listVoucher')->name('Voucher.list');
Route::get('/voucher-combo/{slug}.html', 'HomeController@detailVoucher')->name('Voucher.detail');
Route::get('/lien-he.html', 'HomeController@getContact')->name('contact.get');
Route::get('/ve-chung-toi.html', 'HomeController@vechungtoi')->name('vechungtoi');
Route::get('/cau-hoi-thuong-gap.html', 'HomeController@cauhoithuonggap')->name('cauhoithuonggap');

