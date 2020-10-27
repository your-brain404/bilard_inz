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
use App\Mail\AnswerForm;
use App\Http\Resources\MailsResource;
use App\Mails;

class MailService {

	protected static $attachment;
	protected static $email = 'dany97971@gmail.com';

	public static function validate(array $data): bool {
		$validator = Validator::make($data, [
			'email' => 'required|string|email',
			'subject' => 'required|string',
			'message' => 'required|string',
			'name' => 'required|string',
			'phone' => 'required|string',
			'rodo1' => 'string',
			'rodo2' => 'string',
		]);

		return !$validator->fails();
	}

	public static function answerValidate(array $data): bool {
		$validator = Validator::make($data, [
			'answer_message' => 'required|string',
			'subject' => 'required|string',
			'answer' => 'numeric',
			'id' => 'numeric',
			'email' => 'required|string|email'
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
		// var_dump($data);die;
		self::$attachment = FileHelper::store($data['file'], 'attachments');
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

	public static function saveData(array $request): Mails{

		$mail = isset($request['id']) ? Mails::where('id', $request['id'])->first()->fill($request) : Mails::create($request);

		if ($mail->save()) {
			return $mail;
		}
	}

	public static function getFillables() {
		return ['id', 'answer', 'subject', 'answer_message', 'email', 'attachment'];
	}

	public static function send(Request $request) {
		$data = self::prepareData($request);
		
		$validation = isset($data['id']) ? self::answerValidate($data) : self::validate($data);

		if(!$validation) return ResponseHelper::validateResponse();

		if(isset($data['file'])) $data = self::addAttachment($data, $request);

		if(isset($data['id'])) {
			foreach ($data as $key => $value) {
				if(!in_array($key, self::getFillables())) $request->request->remove($key);
			}
		} 
		
		$mail = self::saveData($request->all());

		$receiver = isset($data['id']) ? $data['email'] : self::$email;
		Mail::to($receiver)->send(self::getTemplate($data));

		if(isset($data['id'])) if(isset($data['attachment'])) FileHelper::delete(self::$attachment->id, 'attachments');

		return self::getResponse($mail);
	}
}