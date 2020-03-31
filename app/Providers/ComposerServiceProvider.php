<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use App\Admin\Webinfo;
use App\Admin\Banner;
use App\Admin\Type;

class ComposerServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //START CONTENT$footers = Banner::where('status',1)->where('type',5)->get();
        View::composer('back-end.products.*', function ($view) {
            $view->with(['flag'=>'product','page_name'=>'SẢN PHẨM', 'name_session'=>'product']);
        });
        View::composer(['back-end.products.create', 'back-end.products.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - SẢN PHẨM', 'parent_route'=>route('product.index')]);
        });
        View::composer(['back-end.products.list', 'back-end.products.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('product.create'),
                        'route_update'=>route('mutileUpdate.product')]);
        });
        //END CONTENT
        View::composer('back-end.pages.report', function ($view) {
            $view->with(['flag'=>'report','page_name'=>'THỐNG KÊ', 'name_session'=>'report']);
        });

        //START CONTENT
        View::composer('back-end.types.*', function ($view) {
            $view->with(['flag'=>'type','page_name'=>'THƯƠNG HIỆU', 'name_session'=>'type']);
        });
        View::composer(['back-end.types.create', 'back-end.types.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - THƯƠNG HIỆU', 'parent_route'=>route('type.index')]);
        });
        View::composer(['back-end.types.list', 'back-end.types.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('type.create'),
                        'route_update'=>route('mutileUpdate.type')]);
        });
        //END CONTENT

        //START CONTENT
        View::composer('back-end.khambenhs.*', function ($view) {
            $view->with(['flag'=>'khambenh','page_name'=>'SẢN PHẨM', 'name_session'=>'khambenh']);
        });
        View::composer(['back-end.khambenhs.create', 'back-end.khambenhs.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - SẢN PHẨM', 'parent_route'=>route('san-pham.index')]);
        });
        View::composer(['back-end.khambenhs.list', 'back-end.khambenhs.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('san-pham.create'),
                        'route_update'=>route('mutileUpdate.san-pham')]);
        });

        //START CONTENT
        View::composer('back-end.colors.*', function ($view) {
            $view->with(['flag'=>'color','page_name'=>'MÀU SẢN PHẨM', 'name_session'=>'color']);
        });
        View::composer(['back-end.colors.create', 'back-end.colors.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - MÀU SẢN PHẨM', 'parent_route'=>route('color.index')]);
        });
        View::composer(['back-end.colors.list', 'back-end.colors.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('color.create'),
                        'route_update'=>route('mutileUpdate.color')]);
        });
        //END CONTENT
        //START CONTENT
        View::composer('back-end.content.*', function ($view) {
            $view->with(['flag'=>'content','page_name'=>'CONTENT', 'name_session'=>'content']);
        });
        View::composer(['back-end.content.create', 'back-end.content.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - CONTENT', 'parent_route'=>route('content.index')]);
        });
        View::composer(['back-end.content.list', 'back-end.content.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('content.create'),
                        'route_update'=>route('mutileUpdate.content')]);
        });
        //END CONTENT

        //START SECTION
        View::composer('back-end.section.*', function ($view) {
            $view->with(['flag'=>'section','page_name'=>'SECTION', 'name_session'=>'section']);
        });
        View::composer(['back-end.section.create', 'back-end.section.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - SECTION', 'parent_route'=>route('section.index')]);
        });
        View::composer(['back-end.section.list', 'back-end.section.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('section.create'),
                        'route_update'=>route('mutileUpdate.section')]);
        });
        //END SECTION

        View::composer('back-end.pages.files', function ($view) {
            $view->with(['page_name'=>'Files', 'flag'=>'files']);
        });

        View::composer('back-end.pages.home', function ($view) {
            $view->with(['page_name'=>'Bảng Tin', 'flag'=>'admin-home']);
        });

        //START USER
        View::composer('back-end.users.*', function ($view) {
            $view->with(['flag'=>'users','page_name'=>'Người Dùng', 'name_session'=>'user']);
        });
        View::composer(['back-end.users.create', 'back-end.users.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - Người Dùng', 'parent_route'=>route('user.index')]);
        });
        View::composer(['back-end.users.list', 'back-end.users.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('user.create'),
                        'route_update'=>route('mutileUpdate.user')]);
        });
        //END USER

        //START WEB INFO
        View::composer('back-end.webinfo.*', function ($view) {
            $view->with(['flag'=>'webinfo','page_name'=>'Thông Tin Website', 'name_session'=>'webinfo']);
        });
        View::composer(['back-end.webinfo.create', 'back-end.webinfo.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - Thông Tin Website', 'parent_route'=>route('webinfo.index')]);
        });
        View::composer(['back-end.webinfo.list', 'back-end.webinfo.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('webinfo.create'),
                        'route_update'=>route('mutileUpdate.webinfo')]);
        });
        //END WEB INFO

        //START PAGE
        View::composer('back-end.page.*', function ($view) {
            $view->with(['flag'=>'page','page_name'=>'Trang', 'name_session'=>'page']);
        });
        View::composer(['back-end.page.create', 'back-end.page.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - Trang', 'parent_route'=>route('page.index')]);
        });
        View::composer(['back-end.page.list', 'back-end.page.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('page.create'),
                        'route_update'=>route('mutileUpdate.page')]);
        });
        //END PAGE

        //START BANNER
        View::composer('back-end.banner.*', function ($view) {
            $view->with(['flag'=>'banner','page_name'=>'Nội dung', 'name_session'=>'banner']);
        });
        View::composer(['back-end.banner.create', 'back-end.banner.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - Nội dung', 'parent_route'=>route('banner.index')]);
        });
        View::composer(['back-end.banner.list', 'back-end.banner.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('banner.create'),
                        'route_update'=>route('mutileUpdate.banner')]);
        });
        //END BANNER

        //START SEO
        View::composer('back-end.seo.*', function ($view) {
            $view->with(['flag'=>'seo','page_name'=>'SEO', 'name_session'=>'seo']);
        });
        View::composer(['back-end.seo.create', 'back-end.seo.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - SEO', 'parent_route'=>route('seo.index')]);
        });
        View::composer(['back-end.seo.list', 'back-end.seo.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('seo.create'),
                        'route_update'=>route('mutileUpdate.seo')]);
        });
        //END SEO

        //START MEDIA
        View::composer('back-end.media.*', function ($view) {
            $view->with(['flag'=>'media','page_name'=>'MEDIA', 'name_session'=>'media']);
        });
        View::composer(['back-end.media.create', 'back-end.media.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - MEDIA', 'parent_route'=>route('media.index')]);
        });
        View::composer(['back-end.media.list', 'back-end.media.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('media.create'),
                        'route_update'=>route('mutileUpdate.media')]);
        });
        //END MEDIA

        //START ICON

        View::composer('back-end.icon.*', function ($view) {
            $view->with(['flag'=>'icon','page_name'=>'ICON', 'name_session'=>'icon']);
        });
        View::composer(['back-end.media.create', 'back-end.media.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - ICON', 'parent_route'=>route('icon.index')]);
        });
        View::composer(['back-end.icon.list', 'back-end.icon.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('icon.create'),
                        'route_update'=>route('mutileUpdate.icon')]);
        });
        //END ICON

        //START TAG
        View::composer('back-end.tag.*', function ($view) {
            $view->with(['flag'=>'tag','page_name'=>'TAG', 'name_session'=>'tag']);
        });
        View::composer(['back-end.tag.create', 'back-end.tag.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - TAGS', 'parent_route'=>route('tag.index')]);
        });
        View::composer(['back-end.tag.list', 'back-end.tag.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('tag.create'),
                        'route_update'=>route('mutileUpdate.tag')]);
        });
        //END TAG

        //START CATEGORY
        View::composer('back-end.category.*', function ($view) {
            $view->with(['flag'=>'category','page_name'=>'CHUYÊN MỤC', 'name_session'=>'category']);
        });
        View::composer(['back-end.category.create', 'back-end.category.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - CHUYÊN MỤC', 'parent_route'=>route('category.index')]);
        });
        View::composer(['back-end.category.list', 'back-end.category.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('category.create'),
                        'route_update'=>route('mutileUpdate.category')]);
        });
        //END CATEGORY

        //START POST
        View::composer('back-end.post.*', function ($view) {
            $view->with(['flag'=>'post','page_name'=>'BÀI VIẾT', 'name_session'=>'post']);
        });
        View::composer(['back-end.post.create', 'back-end.post.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - BÀI VIẾT', 'parent_route'=>route('post.index')]);
        });
        View::composer(['back-end.post.list', 'back-end.post.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('post.create'),
                        'route_update'=>route('mutileUpdate.post')]);
        });
        //END POST

        //START ALBUM
        View::composer('back-end.album.*', function ($view) {
            $view->with(['flag'=>'album','page_name'=>'ALBUM', 'name_session'=>'album']);
        });
        View::composer(['back-end.album.create', 'back-end.album.edit'], function ($view) {
            $view->with(['parent_menu'=>'Danh sách - ALBUM', 'parent_route'=>route('album.index')]);
        });
        View::composer(['back-end.album.list', 'back-end.album.edit'], function ($view) {
            $view->with(['name_button'=>'Thêm mới',
                        'route_button'=>route('album.create'),
                        'route_update'=>route('mutileUpdate.album')]);
        });
        //END ALBUM
        View::composer('frontend.partials.footer', function ($view) {
            $footer_content = Banner::where('status',1)->where('type',5)->first();
            $view->with(['footer_content'=>$footer_content]);
        });

        View::composer('frontend.partials.header', function ($view) {
            $logo = Webinfo::where('name', 'logo')->first();
            $cats = Type::where('status',1)->orderby('name')->get();
            $view->with(['cats'=>$cats, 'logo' => $logo]);
        });

        View::composer('back-end.coso.*', function ($view) {
            $view->with([
                'flag'=>'coso','page_name'=>'CƠ SỞ', 'name_session'=>'coso',
                'name_button'=>'Thêm mới',
                'route_button'=>route('coso.create'),
//                'route_update'=>route('coso.post')
            ]);
        });

        // View::composer(
        //     'partials.navigation', 'App\Http\ViewComposers\NavigationViewComposer'
        // );
    }
}
