<?php
namespace App\Http\Helpers;

use Request;
use App\Settings;
use App\Subpages;
use App\Offers;
use App\News;

class HomeHelper {

	public static function getCurrentSubpage($subpages): object {
		foreach ($subpages as $i => $subpage) {
			if($subpage->page == '/'. Request::segment(1)) return $subpage;
		}
	}

	public static function loadData(): array {
		$data['settings'] = Settings::find(1);
		$data['meta_title'] = 'Panel administracyjny - '. $data['settings']->company;
		$data['meta_description'] = 'Panel administracyjny';

		if(Request::segment(1) != 'admin-panel') {
			$data['current_subpage'] = self::getCurrentSubpage(Subpages::all());
			$data['meta_title'] = $data['current_subpage']->title;
			$data['meta_description'] = $data['current_subpage']->meta_description;
		} 

		if(Request::segment(1) == 'oferta' && Request::segment(2)) {
			$offer = Offers::find(Request::segment(2));
			$data['meta_description'] = $offer->meta_description;
			$data['meta_title'] = $offer->title;
		}
		if(Request::segment(1) == 'aktualnosci' && Request::segment(2)) {
			$info = News::find(Request::segment(2));
			$data['meta_description'] = $info->meta_description;
			$data['meta_title'] = $info->title;
		}

		$data['meta_title'] = $data['meta_title']. ' - '. $data['settings']->company;
		$data['meta_description'] = strip_tags($data['meta_description']);

		return $data;
	}
}