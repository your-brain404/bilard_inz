<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\News;
use App\Slider;
use App\NewsTags;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;
use App\Http\Resources\NewsResource;
use Illuminate\Support\Facades\DB;

class NewsHelper {

	private static function prependData(News $news, Request $request): News {

		$news->title = $request->input('title');
		$news->active = $request->input('active');
		$news->home_page = $request->input('home_page');
		$news->photo_alt = $request->input('photo_alt');
		$news->banner_photo_alt = $request->input('banner_photo_alt');
		$news->photo = $request->input('photo');
		$news->banner_photo = $request->input('banner_photo');
		$news->category = $request->input('category');
		$news->button_name = $request->input('button_name');
		$news->description = $request->input('description');
		$news->short_description = $request->input('short_description');

		return $news;
	}

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

		$news = $request->isMethod('put') ? News::find($request->input('id')) : new News;
		$news = self::prependData($news, $request);

		if ($news->save()) {
			self::saveTags($news, $request->input('tags'));
			return $news;
		}
	}

	public static function getAll(): Collection{
		return News::all();
	}

	public static function getOne(String $id): News{
		return News::find($id);
	}

	public static function getWhere(Request $request) {
		if($request->input('tag')) {
			// $news_tags = NewsTags::where('text', $request->input('tag'))->orderBy('created_at', 'desc')->paginate();
			// $news = [];
			// foreach($news_tags as $tag) {
			// 	array_push($news, News::where('id',$tag->id));
			// }

			$news = DB::select('SELECT news.* FROM news, news_tags WHERE news_tags.text=\'asd1\' AND news.id=news_tags.news_id GROUP BY news_tags.id');
			// $news = DB::table('news')->join('news_tags', 'news.id', '=', 'news_tags.news_id')->select('news.*')->where('news_tags.text', 'asd1')->where('news.id','=', 'news_tags.news_id')->groupBy('news_tags.id')->get();

			var_dump($news);die;
			return $news;
		}else {

			return News::where($request->all())->orderBy('created_at', 'desc')->paginate();
		}
	}

	public static function destroy($id): News{
		$news = News::find($id);
		$news->delete();
		return $news;
	}
}