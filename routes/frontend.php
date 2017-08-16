<?php

Route::get('/', function () {
    return view('welcome');
});

Route::get('/ip', function() {
    return view('welcome');
})->middleware('ip');

/**  Route::resource('users', 'UsersController'); **/
Route::get('/users', 'UsersController@index')->name('users.index');
Route::get('/users/create', 'UsersController@create')->name('users.create');
Route::get('/users/list_book', 'UsersController@listBook')->name('users.list_book');
Route::post('/users/borrow_book', 'UsersController@borrowBook')->name('users.borrow_book');
Route::post('/users', 'UsersController@store')->name('users.store');
Route::get('/users/{user}', 'UsersController@show')->name('users.show');
Route::get('/users/{user}/edit', 'UsersController@edit')->name('users.edit');
Route::put('/users/{user}', 'UsersController@update')->name('users.update');
Route::delete('/users/{user}/', 'UsersController@destroy')->name('users.destroy');



/**  Route::resource('books', 'BooksController'); **/
Route::get('/books', 'BooksController@index')->name('books.index');
Route::get('/books/create', 'BooksController@create')->name('books.create');
Route::post('/books', 'BooksController@store')->name('books.store');
Route::get('/books/{book}', 'BooksController@show')->name('books.show');
Route::get('/books/{book}/edit', 'BooksController@edit')->name('books.edit');
Route::put('/books/{book}', 'BooksController@update')->name('books.update');
Route::delete('/books/{book}/', 'BooksController@destroy')->name('books.destroy');
