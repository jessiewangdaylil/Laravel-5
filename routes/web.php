<?php

use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::namespace ('App\Http\Controllers')->group(function () {
    Route::get('/', 'IndexController@index');
    Route::get('/about', 'AboutController@about');
    Route::get('/checkout', 'CheckoutController@checkout');
    Route::get('/course', 'CourseController@course');
    Route::get('/information', 'InformationController@information');
    Route::get('/professor', 'ProfessorController@professor');
    Route::get('/wish', 'WishController@wish');
    Route::get('/contact', 'ContactController@contact');
    Route::get('/signup', 'SignupController@signup');
    Route::get('/cart', 'CartController@cart');
    Route::get('/confirmation', 'ConfirmationController@confirmation');
    Route::post('/sendmessage', 'ContactController@storeContact');
    Route::get('/information', 'InformationController@information');

});