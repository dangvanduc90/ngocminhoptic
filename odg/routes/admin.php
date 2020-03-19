<?php

/*
|--------------------------------------------------------------------------
| ADMIN Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::middleware(['auth'])->prefix('admin')->group(function () {
	Route::get('/bang-tin','Admin\HomeController@bangtin')->name('bang-tin');
	Route::get('/','Admin\HomeController@bangtin')->name('home-backend');
	Route::get('/profile','Admin\UserController@getProfile')->name('profile.get');
	Route::post('/profile','Admin\UserController@postProfile')->name('profile.post');
	Route::get('/thu-vien', function () {
    	return view('admin.gallery');
	})->name('thu-vien');
});
