<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\News;
use App\NewsTags;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;

class NewsHelper {

	private static function prependData(News $news, Request $request): News {

		$news->title = $request->input('title');
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
			$news_tags = NewsTags::where('news_id', $news->id)->where('text', $tag)->first();
			if($news_tags == null) $news_tags = new NewsTags();
			$news_tags->text = $tag;
			$news_tags->news_id = $news->id;

			$news_tags->save();
		}
	}

	public static function saveData(Request $request): News{

		$news = $request->isMethod('put') ? News::find($request->input('id')) : new News;
		$news = self::prependData($news, $request);

		if ($news->save()) {
			self::saveTags($news, $request->input('tags'));

			return $news;
		}
	}

	private static function getTags($news) {
		if($news[0] !== null){
			foreach($news as $info) {
				// $info->tags = NewsTags::where('news_id', $info->id);
			}
			return $news;
		}else {
			// $news->tags = NewsTags::where('news_id', $news->id);
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
		return News::where($request->all())->get();
	}

	public static function destroy($id): News{
		$news = News::find($id);
		$news->delete();
		return $news;
	}
}