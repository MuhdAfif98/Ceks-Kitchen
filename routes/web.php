<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\RecipeController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// Dashbpard Controller
Route::get('/dashboard', [DashboardController::class, 'index'])->middleware(['auth', 'verified'])->name('dashboard');

// Recipe Controller
Route::get('/my-recipe', [RecipeController::class, 'index'])->name('my-recipe');
Route::get('/new-recipe', [RecipeController::class, 'newRecipe'])->name('new-recipe');
Route::post('/create-recipe', [RecipeController::class, 'createRecipe']);
Route::get('/recipe-details/{id}', [RecipeController::class, 'getSingleRecipe']);

// Forum Controller
Route::get('/forum', function () {
    return view('forum.index.index');
})->middleware(['auth', 'verified'])->name('forum');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';
