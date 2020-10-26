<?php
namespace App\Http\Services;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use App\Http\Services\CrudService;
use App\Http\Helpers\ResponseHelper;
use App\Http\Helpers\FileHelper;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use App\Mail\ContactForm;
use App\Http\Resources\MailsResource;
use App\Mails;

class MailService {

	protected static $attachment;

	public static function validate(array $data): bool {
		$validator = Validator::make($data, [
			'email' => 'required|string|email',
			'subject' => 'required|string',
			'message' => 'required|string',
			'name' => 'required|string',
			'phone' => 'required|string',
			'rodo1' => 'string',
			'rodo2' => 'string',
			'answer' => 'number',
			'id' => 'number'
		]);

		return !$validator->fails();
	}

	public static function setRodo(array $data): array {
		for($i=1 ; $i<3 ; $i++) {
			if(isset($data["rodo$i"]) && $data["rodo$i"]) $data["rodo$i"] = 'Zaakceptowane';
			else $data["rodo$i"] = 'Niezaakceptowane';
		}

		return $data;
	}

	public static function addAttachment(array $data, Request $request): array {
		self::$attachment = FileHelper::store($data['file']);
		$data['attachment'] = self::$attachment->path;
		$request->merge(['attachment' => $data['attachment'] ]);

		return $data;
	}

	public static function getResponse(Mails $mail): MailsResource {
		$response = new MailsResource($mail);
		$response->data = empty(Mail::failures()) ? ResponseHelper::mailSuccessResponse() : ResponseHelper::mailErrorResponse();

		return $response;
	}

	public static function prepareData(Request $request): array {
		$data = $request->all();

		return self::setRodo($data);
	} 

	public static function getTemplate(array $data) {
		if(isset($data['answer'])) return new AnswerForm($data);
		else return new ContactForm($data);
	}

	public static function send(Request $request) {
		$data = self::prepareData($request);
		if(!self::validate($data)) return ResponseHelper::validateResponse();
		if(isset($data['file'])) $data = self::addAttachment($data, $request);
		if(isset($data['id'])) {
			foreach ($data as $key => $value) {
				if($key != 'id' && $key != 'answer') $request->request->remove($key);
			}
		} 
		$mail = CrudService::saveData($request);

		Mail::to('dany97971@gmail.com')->send(self::getTemplate($data));

		if(isset(self::$attachment)) FileHelper::delete(self::$attachment->id);

		return self::getResponse($mail);
	}
}