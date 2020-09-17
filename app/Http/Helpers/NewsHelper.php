<?php
namespace App\Http\Helpers;

use App\Http\Helpers\FileHelper;
use App\News;
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
		$news->tags = $request->input('tags');
		$news->button_name = $request->input('button_name');
		$news->description = $request->input('description');
		$news->short_description = $request->input('short_description');

		return $news;
	}

	public static function saveData(Request $request): News{

		$news = $request->isMethod('put') ? News::find($request->input('id')) : new News;
		$news = self::prependData($news, $request);

		if ($news->save()) {

			return $news;
		}
	}

	

	public static function getAll(): Collection{
		return News::all();
	}

	public static function getOne(String $id): News{
		return News::find($id);
	}

	public static function destroy($id): News{
		$news = News::find($id);
		$news->delete();
		return $news;
	}
}