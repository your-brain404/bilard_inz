<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Services\ReservationsService;
use App\Http\Resources\ReservationsResource;
use App\Http\Helpers\ResponseHelper;
use App\Http\Resources\ReservationsCollection;
use Illuminate\Http\Request;
use Illuminate\Mail\Mailable;
use App\Mail\ReservationAccept;
use Illuminate\Support\Facades\Mail;

class ReservationsController extends Controller
{
     public function __construct() {
		new CrudService('App\\'. str_replace('Controller', '', explode('\\', __CLASS__)[array_key_last(explode('\\', __CLASS__))]));
	}

    public function getAll() {
		$reservations = CrudService::getAll();
		return new ReservationsCollection($reservations);
	}

	public function getOne($id) {
		$reservation = CrudService::getOne($id);
		return new ReservationsResource($reservation, $reservation->service_equipment);
	}

	public function getWhere(Request $request) {
		$reservations = CrudService::getWhere($request, 'desc');
		return new ReservationsCollection($reservations);
	}

	public function store(Request $request) {
		$reservation = ReservationsService::saveData($request);
		return new ReservationsResource($reservation, $reservation->service_equipment);
	}

	public function accept(Request $request) {
		if($request->input('active')) Mail::to($request->input('email'))->send(new ReservationAccept($request->all()));
		return count(Mail::failures()) > 0 ? ResponseHelper::mailErrorResponse() : ResponseHelper::mailSuccessResponse();
	}
	
	public function destroy($id) {
		$reservation = CrudService::destroy($id);
		return new ReservationsResource($reservation, $reservation->service_equipment); 
	}
}
