<?php

namespace App\Http\Controllers;

use App\Http\Services\CrudService;
use App\Http\Resources\ReservationsResource;
use Illuminate\Http\Request;

class ReservationsController extends Controller
{
     public function __construct() {
		new CrudService('App\Reservations');
	}

    public function getAll() {
		$reservations = CrudService::getAll();
		return new ReservationsResource($reservations);
	}

	public function getOne($id) {
		$reservation = CrudService::getOne($id);
		return new ReservationsResource($reservation);
	}

	public function getWhere(Request $request) {
		$reservations = CrudService::getWhere($request, 'asc');
		return new ReservationsResource($reservations);
	}

	public function store(Request $request) {
		$reservation = CrudService::saveData($request);
		return new ReservationsResource($reservation);
	}
	
	public function destroy($id) {
		$reservation = CrudService::destroy($id);
		return new ReservationsResource($reservation); 
	}
}
