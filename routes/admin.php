<?php
Route::get('admin/login', 'Auth\LoginController@showAdminLoginForm')->name('admin.login.get');
Route::post('admin/login', 'Auth\LoginController@loginAdmin')->name('admin.login.post');
Route::get('/ajax/addProduct', 'Admin\BenhanController@ajaxAddProduct');
Route::middleware(['auth:admin'])->prefix('admin')->group(function () {
	Route::post('admin/lgout', 'Auth\LoginController@logoutAdmin')->name('admin.logout');
	Route::get('/ajax/getBenhAn', 'Admin\BenhanController@ajaxgetBenhAn');
	Route::get('/ajax/searchBenhAn', 'Admin\BenhanController@ajaxsearchBenhAn');
	Route::get('/ajax/searchOrder', 'Admin\BenhanController@ajaxsearchOrder');
	Route::post('/ajax/deleteOrder/{id}', 'Admin\OrderController@ajaxDestroyOrder')->name('destroy.order');
	Route::get('/download/Benhan/{id}', 'Admin\BenhanController@download')->name('download.benhan');
	Route::get('/', 'Admin\PostController@index')
	->name('admin.home');

	Route::get('/followers/', 'Admin\ContactController@index')->name('contact.show');
	Route::get('/contacts/', 'Admin\LienHeController@index')->name('lienhe.show');
	Route::get('/donhang/', 'Admin\DonhangController@index')->name('donhang.show');

	//Product
	Route::resource('product', 'Admin\ProductController');
	Route::post('/mutile-update/product', 'Admin\ProductController@mutileUpdate')
	->name('mutileUpdate.product');

	//Product
	Route::resource('type', 'Admin\TypeController');
	Route::post('/mutile-update/type', 'Admin\TypeController@mutileUpdate')
	->name('mutileUpdate.type');

	Route::resource('san-pham', 'Admin\KhambenhController');
	Route::post('/mutile-update/san-pham', 'Admin\KhambenhController@mutileUpdate')
	->name('mutileUpdate.san-pham');

	//Product
	Route::resource('color', 'Admin\ColorController');
	Route::post('/mutile-update/color', 'Admin\ColorController@mutileUpdate')
	->name('mutileUpdate.color');

	//Content
	Route::resource('content', 'Admin\ContentController');
	Route::post('/mutile-update/content', 'Admin\ContentController@mutileUpdate')
	->name('mutileUpdate.content');

	//Section
	Route::resource('section', 'Admin\SectionController');
	Route::post('/mutile-update/section', 'Admin\SectionController@mutileUpdate')
	->name('mutileUpdate.section');

	//Post
	Route::resource('post', 'Admin\PostController');
	Route::post('/mutile-update/post', 'Admin\PostController@mutileUpdate')
	->name('mutileUpdate.post');

	//Album
	Route::resource('album', 'Admin\AlbumController');
	Route::post('/mutile-update/album', 'Admin\AlbumController@mutileUpdate')
	->name('mutileUpdate.album');
	Route::get('/get-image/autocomplete', 'Admin\AlbumController@getImage')
	->name('get-image');

	//Category
	Route::resource('category', 'Admin\CategoryController');
	Route::post('/mutile-update/category', 'Admin\CategoryController@mutileUpdate')
	->name('mutileUpdate.category');

	//Tag
	Route::resource('tag', 'Admin\TagController');
	Route::post('/mutile-update/tag', 'Admin\TagController@mutileUpdate')
	->name('mutileUpdate.tag');

	//Icon
	Route::resource('icon', 'Admin\IconController');
	Route::post('/mutile-update/icon', 'Admin\IconController@mutileUpdate')
	->name('mutileUpdate.icon');

	//Seo
	Route::resource('seo', 'Admin\SeoController');
	Route::post('/mutile-update/seo', 'Admin\SeoController@mutileUpdate')
	->name('mutileUpdate.seo');

	//Media
	Route::resource('media', 'Admin\MediaController');
	Route::post('/mutile-update/media', 'Admin\MediaController@mutileUpdate')
	->name('mutileUpdate.media');

	//Home
	Route::get('/home', 'Admin\HomeController@adminHome')->name('admin.home');
	Route::get('/report', 'Admin\HomeController@report')->name('report');
	Route::post('/report', 'Admin\HomeController@report')->name('report.post');

	//User
	Route::resource('user', 'Admin\UserController');
	Route::get('/profile', 'Admin\UserController@getProfile')->name('profile.get');
	Route::post('/profile', 'Admin\UserController@postProfile')->name('profile.post');
	Route::post('/mutile-update/user', 'Admin\UserController@mutileUpdate')
	->name('mutileUpdate.user');

	//Webinfo
	Route::resource('webinfo', 'Admin\WebinfoController');
	Route::post('/mutile-update/webinfo', 'Admin\WebinfoController@mutileUpdate')
	->name('mutileUpdate.webinfo');

	//Page
	Route::resource('page', 'Admin\PageController');
	Route::post('/mutile-update/page', 'Admin\PageController@mutileUpdate')
	->name('mutileUpdate.page');

	//Banner
	Route::resource('banner', 'Admin\BannerController');
	Route::post('/mutile-update/banner', 'Admin\BannerController@mutileUpdate')
	->name('mutileUpdate.banner');

	//Logs
	Route::get('/logs', '\Rap2hpoutre\LaravelLogViewer\LogViewerController@index')
	->name('admin.logs');

    Route::get('/benh-an/add', 'Admin\BenhanController@add')->name('benh-an.add');
	Route::resource('benh-an', 'Admin\BenhanController');

	//Files
	Route::get('/files', function () {
    	return view('back-end.pages.files');
	})->name('admin.files');

	//Slug
	Route::get('/create-slug', 'Admin\HomeController@createSlug')
	->name('create-slug');

    Route::resource('coso', 'Admin\CoSoController');

    Route::post('ajax/exports/benhan', 'ExportsController@exportBenhAn')->name('post.exports.benhan');
    Route::post('ajax/exports/lichhen', 'ExportsController@exportLichHen')->name('post.exports.lichhen');
    Route::post('ajax/exports/sanpham', 'ExportsController@exportSanPham')->name('post.exports.sanpham');
});
