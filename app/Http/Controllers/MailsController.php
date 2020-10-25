<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Services\MailService;
use App\Http\Resources\MailsResource;
use Illuminate\Http\Request;

class MailsController extends Controller
{
    public function __construct() {
		new CrudService('App\Mails');
	}

    public function getAll() {
		$offers = CrudService::getAll();
		return new MailsResource($offers);
	}

	public function getOne($id) {
		$offers = CrudService::getOne($id);
		return new MailsResource($offers);
	}

	public function store(Request $request) {
		$offers = CrudService::saveData($request);
		return new MailsResource($offers);
	}
	
	public function destroy($id) {
		$offers = CrudService::destroy($id);
		return new MailsResource($offers); 
	}
}
