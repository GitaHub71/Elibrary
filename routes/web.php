<?php


use Illuminate\Support\Facades\Route;

use App\Http\Controllers\LoanController;
use App\Http\Controllers\MemberController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\LoginController;

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


Route::get('/books/checkSlug', [BookController::class, 'checkSlug']);

Route::get('/authors/checkSlug', [AuthorController::class, 'checkSlug']);

Route::get('/login', [LoginController::class, 'login'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);

// Route::resources([
//     'authors' => AuthorController::class,
//     'books' => BookController::class,
//     'loans' => LoanController::class,
//     'members' => MemberController::class
// ]);

Route::get('/', function(){
    return redirect('loans');
})->middleware('auth');

Route::resource('authors', AuthorController::class)->middleware('auth');

Route::resource('loans', LoanController::class)->except('show')->middleware('auth');

Route::resource('books', BookController::class)->middleware('auth');

Route::resource('members', MemberController::class)->except('show')->middleware('auth');


