<?php
namespace App\Http\Services;

use Illuminate\Http\Request;
use App\Http\Services\CrudService;
use App\Http\Helpers\RecaptchaHelper;
use App\Reservations;
use Illuminate\Support\Facades\Mail;
use App\Mail\NewReservation;
use App\ServiceEquipments;
use App\Contact;

class ReservationsService {

	public static function saveData(Request $request) {
		if(!RecaptchaHelper::validate($request->response)) return ResponseHelper::invalidRecaptcha();

		$data = CrudService::prependData($request);

		$reservation = $request->isMethod('put') ? Reservations::where('id', $request->input('id'))->first()->fill($data) : Reservations::create($data);

		$data = $request->all();
		$data['service_equipment'] = ServiceEquipments::find($data['service_equipment_id']);

		Mail::to(Contact::find(1)->email_1)->send(new NewReservation($data));


		if ($reservation->save()) {

			return $reservation;
		}
	}
}