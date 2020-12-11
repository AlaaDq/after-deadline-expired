<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::post('/tasks', StoreTask::class);
Route::get('/tasks/{task}', showTask::class);
Route::get('/tasks', indexTask::class);

Route::middleware('auth:api')->group(function () {
    Route::get('logout','AuthController@logout');
    
    Route::get('user', function (Request $request) {
        return $request->user();
    });    

    Route::post('/tasks', StoreTask::class);
    Route::get('/tasks/{task}', showTask::class);
    Route::get('/tasks', indexTask::class);

});

Route::post('register','AuthController@register');
Route::post('login','AuthController@login');

