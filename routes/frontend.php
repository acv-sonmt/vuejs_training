<?php

Route::get('/', function () {
    return view('welcome');
});

/**  Route::resource('users', 'UsersController'); **/
Route::get('/users', 'UsersController@index')->name('users.index');
Route::get('/users/create', 'UsersController@create')->name('users.create');
Route::post('/users', 'UsersController@store')->name('users.store');
Route::get('/users/{user}', 'UsersController@show')->name('users.show');
Route::get('/users/{user}/edit', 'UsersController@edit')->name('users.edit');
Route::put('/users/{user}', 'UsersController@update')->name('users.update');
Route::delete('/users/{user}/', 'UsersController@destroy')->name('users.destroy');
