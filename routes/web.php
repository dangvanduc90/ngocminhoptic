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
Route::group(['middleware' => 'locale'], function() {
	Route::get('/', 'HomeController@index')->name('trangchu');
	Route::get('/bai-viet.html', 'HomeController@listPost')->name('post.list');
	Route::get('/tin-tuc.html', 'HomeController@listNew')->name('tintuc.list');
	Route::get('/khuyen-mai.html', 'HomeController@listOff')->name('khuyenmai.list');
	Route::get('/bai-viet/{slug}.html', 'HomeController@detailPost')->name('post.detail');
	Route::get('/lien-he.html', 'HomeController@getLienHe')->name('lienhe.get');
	Route::post('/lien-he.html', 'HomeController@postLienHe')->name('lienhe.post');
	Route::get('/dat-lich.html', 'HomeController@getDatlich')->name('datlich.get');
	Route::post('/dat-lich.html', 'HomeController@postDatlich')->name('datlich.post');
	Route::get('/benh-an.html', 'HomeController@getBenhAn')->name('benhan.get');
	Route::get('/san-pham.html', 'HomeController@productList')->name('product.list');
	Route::get('/san-pham/danh-muc/{slug}.html', 'HomeController@productListOne')->name('product-one.list');
	Route::get('/san-pham/{slug}.html', 'HomeController@detailProduct')->name('product.detail');
	Route::get('/ajax/getProductInfo', 'HomeController@ajaxProductInfo');
	Route::get('/ajax/getColorProductInfo', 'HomeController@getColorProductInfo');
	Route::get('/ajax/sendContact', 'Admin\ContactController@store');
	Route::get('/ajax/searhProduct', 'HomeController@searchProduct');
	Route::get('/ajax/addToCart', 'CartController@ajaxAdd');
	Route::get('/ajax/updateToCart', 'CartController@ajaxUpdate');
	Route::get('/gio-hang.html', 'CartController@getGioHang')->name('giohang.get');
	Route::get('/thanh-toan.html', 'CartController@thanhtoan')->name('thanhtoan');
	Route::post('/thanh-toan.html', 'CartController@postThanhToan')->name('thanhtoan.post');
	Route::post('/remove/gio-hang.html', 'CartController@removeProduct')->name('product.removeCart');
	Route::get('/thong-bao.html', 'HomeController@getThongBao')->name('thongbao.get');
	Route::get('/download.html', 'CartController@download')->name('download.hoadon');
	Route::get('/ajax/search/benhan', 'HomeController@ajaxsearchBenhAn');
	Route::get('/ajax/info/benhan', 'HomeController@ajaxinfoBenhAn');
	Route::get('/scan/benhan/{id}', 'HomeController@ajaxscanBenhAn')->name('benhan.scan');
	Auth::routes();
	Route::get('/home', 'HomeController@index')->name('home');
	Route::get('change-language/{language}', 'HomeController@changeLanguage')->name('user.change-language');
});


//START ADMIN ROUTE
include('admin.php');
//END ADMIN ROUTE


