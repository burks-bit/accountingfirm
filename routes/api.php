<?php

// use Illuminate\Http\Request;
// use Illuminate\Support\Facades\Route;
// use App\Http\Controllers\UserController;
// use App\Http\Controllers\VendorController;
// use App\Http\Controllers\InvoiceController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::resource('invoices', InvoiceController::class);
// Route::apiResource('vendors', VendorController::class);


// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::post('/login', [UserController::class, 'login']);
// Route::post('/logout', [UserController::class, 'logout'])->middleware('auth:sanctum');
// Route::post('/register', [UserController::class, 'register']);

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\VendorController;
use App\Http\Controllers\UserController;

Route::get('/invoices', [InvoiceController::class, 'index']);

// Invoice routes
// Route::middleware('auth:sanctum')->group(function () {
//     Route::get('/invoices', [InvoiceController::class, 'index']);
//     Route::post('/invoices', [InvoiceController::class, 'store']);
//     Route::get('/invoices/{invoice}', [InvoiceController::class, 'show']);
//     Route::put('/invoices/{invoice}', [InvoiceController::class, 'update']);
//     Route::delete('/invoices/{invoice}', [InvoiceController::class, 'destroy']);
// });

// Vendor routes
Route::middleware('auth:sanctum')->apiResource('vendors', VendorController::class);

// User routes
Route::post('/login', [UserController::class, 'login']);
Route::post('/logout', [UserController::class, 'logout'])->middleware('auth:sanctum');
Route::post('/register', [UserController::class, 'register']);

// User information retrieval route
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
