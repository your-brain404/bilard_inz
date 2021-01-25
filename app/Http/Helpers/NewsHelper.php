<?php
namespace App\Http\Helpers;

use App\News;
use App\NewsTags;
use App\Http\Services\CrudService;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;
use App\Http\Resources\NewsResource;
use Illuminate\Support\Facades\DB;

class NewsHelper {

	private static function saveTags(News $news, array $tags) {
		foreach ($tags as $tag) {
			$news_tags = NewsTags::where('news_id', $news->id)->where('text', $tag['text'])->first();
			if($news_tags == null) $news_tags = new NewsTags();
			$news_tags->text = $tag['text'];
			$news_tags->news_id = $news->id;

			$news_tags->save();
		}
	}

	public static function saveData(Request $request){

		$data = CrudService::prependData($request);
		$news = $request->isMethod('put') ? News::where('id',$request->input('id'))->first()->fill($data) : News::create($data);

		if ($news->save()) {
			self::saveTags($news, $request->input('tags'));
			return $news;
		}
	}

	

	public static function getWhere(Request $request) {
		if($request->input('tag')) {
			$tag = $request->input('tag');

			$news = DB::select("SELECT news.* FROM news, news_tags WHERE news_tags.text='$tag' AND news.id=news_tags.news_id GROUP BY news_tags.id");
			
			$ids = [];
			foreach($news as $info) {
				array_push($ids, $info->id);
			}

			return News::where('id', $ids)->orderBy('created_at', 'desc')->paginate();
		}else {

			return News::where($request->all())->orderBy('created_at', 'desc')->paginate();
		}
	}

	
}