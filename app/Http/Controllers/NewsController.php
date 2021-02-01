<?php

namespace App\Http\Controllers;

use App\Http\Helpers\NewsHelper;
use App\Http\Services\CrudService;
use App\Http\Resources\NewsCollection;
use App\Http\Resources\NewsResource;
use App\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
	public function __construct() {
		CrudService::$model = 'App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]);
	}
	
    public function getAll() {
		$news = CrudService::getAll();
		return new NewsCollection($news);
	}

	public function getOne($id) {
		$news = CrudService::getOne($id);
		return new NewsResource($news, $news->tags);
	}

	public function getWhere(Request $request) {
		$news = NewsHelper::getWhere($request);
		return new NewsCollection($news);
	}

	public function getPagination() {
		return new NewsCollection(News::orderBy('created_at', 'desc')->paginate());
	}

	
	public function store(Request $request) {
		$news = NewsHelper::saveData($request);
		return new NewsResource($news, $news->tags);
	}

	
	public function destroy($id) {
		$news = CrudService::destroy($id);
		return new NewsResource($news, $news->tags); 
	}
}
