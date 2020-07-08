<?php

namespace App\Http\Controllers;

use App\Http\Helpers\FileHelper;
use App\Http\Resources\SliderResource;
use App\Slider;
use Illuminate\Http\Request;

class SliderController extends Controller {
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index() {
		//
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create() {
		//
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request) {
		$slider = $request->isMethod('put') ? Slider::findOrFail($request->id) : new Slider;

		$slider->title = $request->input('title');
		$slider->subtitle = $request->input('subtitle');
		$slider->photo_alt = $request->input('photo_alt');

		if ($request->file('file')) {

			$slider->photo = FileHelper::store($request->file('file'), 'img/slider/');
		}

		if ($slider->save()) {
			return new SliderResource($slider);
		}

	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id) {
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id) {
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id) {
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id) {
		//
	}
}
