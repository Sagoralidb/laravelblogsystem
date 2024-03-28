<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Tag;
use Illuminate\Http\Request;

class TagController extends Controller
{
    public function OpenTagsPage()
    {
        $tags       =   Tag::all();

        return view('auth.tags.index',compact('tags'));
    }
}
