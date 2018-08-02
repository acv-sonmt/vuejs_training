<?php


/**
 * Dev mode
 */
//Router config here...
Route::get('/dev', 'DevController@index')->name('index');
Route::get('/dev/test', 'DevController@test')->name('test');
Route::get('/dev/translationManagement', 'DevController@translationManagement')->name('translationManagement');
Route::get('/dev/readAclConfig', 'DevController@readAclConfig')->name('readAclConfig');
Route::get('/dev/generationAclConfigFiles', 'DevController@generationAclConfigFiles')->name('generationAclConfigFiles');


Route::post('/dev/importScreensList', 'DevController@importScreensList')->name('importScreensList');

Route::post('/dev/initProject', 'DevController@initProject')->name('initProject');

Route::get('/dev/translation', 'DevController@translationManagement')->name('translationManagement');
Route::get('/dev/acl', 'DevController@aclManangement')->name('aclManangement');

Route::get('/dev/menu', 'MenuController@menu')->name('menu');
Route::post('/dev/menu/createMenu','MenuController@createMenu')->name('createMenu');
Route::post('/dev/menu/updateMenu','MenuController@updateMenu')->name('updateMenu');
Route::delete('/dev/menu/delete','MenuController@deleteMenu')->name('deleteMenu');

Route::post('/dev/updateAclActive', 'DevController@updateAclActive')->name('updateAclActive');
Route::post('/dev/updateAclActiveAll', 'DevController@updateAclActiveAll')->name('updateAclActiveAll');

Route::post('/dev/generationAclFile', 'DevController@generationAclFile')->name('generationAclFile');
Route::post('/dev/refreshAclDB', 'DevController@refreshAclDB')->name('refreshAclInDB');


Route::get('/dev/userRole', 'DevController@userRole')->name('userRole');
Route::post('/dev/updateUserRole', 'DevController@updateUserRole')->name('updateUserRole');


Route::post('/dev/updateTranslate', 'DevController@updateTranslate')->name('updateTranslate');
Route::post('/dev/generationLanguageFiles', 'DevController@generationLanguageFiles')->name('generationLanguageFiles');

Route::post('/dev/importTranslateToDB', 'DevController@importTranslateToDB')->name('importTranslateToDB');
Route::any('/dev/newTextTrans', 'DevController@newTextTrans')->name('newTextTrans');
Route::any('/dev/createNewTranslationItem', 'DevController@createNewTranslationItem')->name('createNewTranslationItem');

Route::get('/dev/testvalidate', 'DevController@testCustomValidate')->name('testCustomValidate');
Route::post('/dev/generateEntity', 'DevController@generateEntity')->name('generateEntity');
Route::get('/dev/entityManagement', 'DevController@entityManagement')->name('entityManagement');
Route::post('/dev/generateOneEntity', 'DevController@generateOneEntity')->name('generateOneEntity');

Route::get('/dev/log', 'DevController@log')->name('logManagement');
Route::get('/dev/doc', 'DevController@doc')->name('doc');
