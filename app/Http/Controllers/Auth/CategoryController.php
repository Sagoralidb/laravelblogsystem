<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function OpenCategoriesPage()
    {
       
        $categories = Category::all(); // সমস্ত ক্যাটাগরি প্রাপ্ত করুন


        return view('auth.categories.index',compact('categories'));
    }
}
