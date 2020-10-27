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
use App\Attachments;
use Illuminate\Mail\Mailable;

class MailService {

	protected static $email = 'dany97971@gmail.com';

	public static function questionValidation(array $data): bool {
		$validator = Validator::make($data, [
			'email' => 'required|string|email',
			'subject' => 'required|string',
			'message' => 'required|string',
			'name' => 'required|string',
			'phone' => 'required|string',
		]);

		return !$validator->fails();
	}

	public static function answerValidation(array $data): bool {
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

	public static function getResponse(Mails $mail): MailsResource {
		$response = new MailsResource($mail);
		$response->data = empty(Mail::failures()) ? ResponseHelper::mailSuccessResponse() : ResponseHelper::mailErrorResponse();

		return $response;
	}

	public static function getTemplate(array $data): Mailable {
		return isset($data['answer']) ? new AnswerForm($data) : new ContactForm($data);
	}

	public static function checkAttachmentsToDelete(array $data) {
		if(isset($data['answer'])) {
			$attachments = Attachments::where('mail_id', $data['id'])->get();
			if(!empty($attachments)) {
				foreach($attachments as $attachment) {
					FileHelper::deleteFilesFromStorage($attachment->path, 'attachments');
					$attachment->delete();
				}
			} 
		}
	}

	public static function saveData(Request $request) {
		$data = CrudService::prependData($request);
		$validation = isset($data['answer']) ? self::answerValidation($data) : self::questionValidation($data);

		return $validation ? CrudService::saveData($request) : ResponseHelper::validateResponse();
	}

	public static function send(Request $request) {
		$data = CrudService::prependData($request);
		$data = self::setRodo($data);
		$data['mail'] = Mails::find($data['id']);

		$receiver = isset($data['answer']) ? $data['email'] : self::$email;
		Mail::to($receiver)->send(self::getTemplate($data));

		self::checkAttachmentsToDelete($data);
		
		return self::getResponse($data['mail']);
	}

	public static function answer(Request $request) {
		
	}
}