<?php

namespace App\Http\Controllers;

use App\Http\Helpers\NewsHelper;
use App\Http\Resources\NewsResource;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function getAll() {
		$news = NewsHelper::getAll();
		return new NewsResource($news);
	}

	public function getOne($id) {
		$news = NewsHelper::getOne($id);
		return new NewsResource($news);
	}

	
	public function store(Request $request) {
		$news = NewsHelper::saveData($request);
		return new NewsResource($news);
	}

	
	public function destroy($id) {
		$news = NewsHelper::destroy($id);
		return new NewsResource($news); 
	}
}
