<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Tymon\JWTAuth\Facades\JWTAuth;

// Route
use App\Http\Controllers\Front\PlansController;
use App\Http\Controllers\Front\ContactController;
use App\Http\Controllers\Front\FoodsController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\Dashboard\ProfileController;
use \App\Http\Controllers\Front\PackageController;



Route::get('plans', [PlansController::class, 'index']);
Route::get('plan/{id}', [PlansController::class, 'show']);
Route::get('foods', [FoodsController::class, 'index']);
Route::get('food/{id}', [FoodsController::class, 'show']);
Route::get('packages', [PackageController::class, 'index']);
Route::get('package/{id}', [PackageController::class, 'show']);

Route::controller(ContactController::class)->group(function() {
    Route::get('/contacts', 'index');
    Route::post('/contact', 'store');
});

Route::post('/login', [AuthController::class, 'login'])->name('login');
Route::post('/register', [AuthController::class, 'register']);
Route::post('/change-password', [AuthController::class, 'changePassword']);


Route::group(['middleware' => 'api'], function() {
    Route::get('/user', [AuthController::class, 'user']);
    Route::post('/logout' , [AuthController::class, 'logout']);
});

