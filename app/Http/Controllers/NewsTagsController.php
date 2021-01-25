<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\NewsTags;

class NewsTagsController extends Controller
{
    public function destroy($id) {
    	NewsTags::find($id)->delete();
    }
}
