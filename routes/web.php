<?php

use App\Http\Controllers\Auth\CategoryController;
use App\Http\Controllers\Auth\DashboardController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\PostController;
use App\Http\Controllers\Auth\ProfileController;
use App\Http\Controllers\Auth\TagController;
use App\Http\Controllers\site\BlogController;
use App\Http\Controllers\site\CommentController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/logout', function () {
    auth()->logout();
    //return view('welcome');
});



// Route::view('/theme','auth.dashboard');

 Auth::routes([
    //'register' => false
 ]);

Route::middleware('auth')->group(function(){

    Route::get('dashboard',[DashboardController::class,'dashboard'])->name('dashboard');
    Route::resource('auth/posts', PostController::class);
    Route::get('auth/catagories',[CategoryController::class,'OpenCategoriesPage'])->name('auth.categories');
    Route::get('auth/tags',[TagController::class,'OpenTagsPage'])->name('auth.tags');
    Route::get('auth/profile',[ProfileController::class,'openProfilePage'])->name('auth.profile.index');
    Route::post('auth/profile',[ProfileController::class,'storeProfile'])->name('auth.profile.store');

} );


 //Route::view('/','site.index'); //Font page route
 
 Route::get('/',[BlogController::class,'index'])->name('home');
 Route::get('single-blog/{id}',[BlogController::class,'OpenSingleBlog'])->name('single-blog');

 Route::post('post/comment/{postId}',[CommentController::class,'postComment'])->name('post.comment')->middleware('auth');
 Route::post('comment/reply/{commentId}',[CommentController::class,'postCommentReply'])->name('comment.reply');
 Route::delete('comment/reply/delete',[CommentController::class,'deleteCommentReply'])->name('comment.reply.delete');