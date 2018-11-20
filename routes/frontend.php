<?php

/*
|--------------------------------------------------------------------------
| Frontend Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


/**
 * frontend module
 */
    Route::get('/company/home', 'HomeController@index')->name('home');
    Route::get('/company/login', 'HomeController@apilogin')->name('apiloginform');

    //user
    Route::get('/frontend/user_manager', 'UserVueController@index')->name('user_manager');
    Route::post('/frontend/user_list', 'UserVueController@listUser')->name('user_list');
    Route::get('/frontend/create_user', 'UserVueController@listUser')->name('create_user');
    Route::post('/frontend/gentable', 'UserVueController@genTable')->name('gentable');

    //role
    Route::post('/frontend/roles_list', 'RoleController@listRoles')->name('roles_list');
