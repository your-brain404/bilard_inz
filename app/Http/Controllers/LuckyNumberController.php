<?php

namespace App\Http\Controllers;

use App\Http\Helpers\ResponseHelper;
use App\Http\Services\CrudService;
use App\Http\Resources\CrudResource;
use App\LuckyNumber;
use App\User;
use Illuminate\Http\Request;

class LuckyNumberController extends Controller
{
	public function __construct()
	{
		CrudService::$model = 'App\\' . str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]);
	}

	public function getAll()
	{
		$lucky_number = CrudService::getAll();
		return new CrudResource($lucky_number);
	}

	public function getOne($id)
	{
		$lucky_number = CrudService::getOne($id);
		return new CrudResource($lucky_number);
	}

	public function getWhere(Request $request)
	{
		$lucky_number = CrudService::getWhere($request, 'asc');
		return new CrudResource($lucky_number);
	}

	public function store(Request $request)
	{
		$lucky_number = CrudService::saveData($request);
		return new CrudResource($lucky_number);
	}

	public function destroy($id)
	{
		$lucky_number = CrudService::destroy($id);
		return new CrudResource($lucky_number);
	}

	public function dice()
	{
		$users = User::all();
		$ids = [];
		foreach ($users as $user) {
			if (in_array($user->type, ['Klient', 'Zawodnik'])) {
				array_push($ids, $user->id);
			}
		}

		shuffle($ids);

		$lucky_number = LuckyNumber::find(1);
		$lucky_number->number = $ids[0];
		$lucky_number->save();

		return ResponseHelper::luckyNumber($lucky_number->number);
	}
}
