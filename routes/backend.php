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


/**
 * backend module
 */
    Route::get('/home', 'HomeController@index')->name('home');
    Route::get('/some', 'SomeController@index')->name('some');
    Route::get('/blog', 'BlogController@index')->name('blog');

    //Template Controller
    Route::get('/backend/template', 'TemplateController@index')->name('backend_template');
    Route::get('/backend/template/form', 'TemplateController@form')->name('form_template');
    Route::get('/backend/template/components', 'TemplateController@components')->name('component_template');
    Route::get('/backend/template/buttons', 'TemplateController@buttons')->name('button_template');
    Route::get('/backend/template/upload', 'TemplateController@upload')->name('upload_template');
    Route::get('/backend/template/general-element', 'TemplateController@generalElement')->name('generalElement_template');
    Route::get('/backend/template/icons', 'TemplateController@icons')->name('icons_template');
    Route::get('/backend/template/glyphicons', 'TemplateController@glyphicons')->name('glyphicons_template');
    Route::get('/backend/template/calendar', 'TemplateController@calendar')->name('calendar_template');
