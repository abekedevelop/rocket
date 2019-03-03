<?php


Route::group(['middleware' => 'api'], function(){

    Route::get('search-by-word', 'RequestController@searchByWord');

    Route::get('/get-photo-by-id', 'RequestController@searchById');

});
