<?php


Route::group(['middleware' => 'api'], function(){

    Route::get('search-photos', 'RequestController@searchPhotos');

    Route::get('get-photo-by-id', 'RequestController@searchPhotoById');

});
