<?php
namespace App\Http\Services;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use App\Http\Services\CrudService;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactForm;

class MailService {

	public static function validate(array $data) {
		$validator = Validator::make($data, [
			'email' => 'required|string|email',
			'subject' => 'required|string',
			'message' => 'required|string',
			'name' => 'required|string',
			'phone' => 'required|string',
		]);

		return !$validator->fails();
	}

	public static function send(Request $request) {
		$data = $request->all();
		if(self::validate($data)) {

			CrudService::saveData($request);
			Mail::to($data['email'])->send(new ContactForm($data));
		}
	}
}