<?php

use App\Jobs\ProcessMail;
use App\Mail\taskExpiredMail;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Mail;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();




Route::get('/home', 'HomeController@index')->name('home');

Route::get('test',function(){
     $details=[
        "mailto"=>"alaa.eddin.ksibati.97@gmail.com",
        "subject"=>"task expired",
        "body"=>"task"
    ];
    
    // dispatch(new ProcessMail($details)); //work

    \Mail::to($details['mailto'])->queue((new taskExpiredMail($details)));
    return true;


});


