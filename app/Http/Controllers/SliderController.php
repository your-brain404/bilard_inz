<?php

namespace App\Http\Controllers;

use App\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

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

		// if ($request->hasFile('file')) {
		// 	$fileNameWithExt = $request->file('file')->getClientOriginalName();
		// 	$filename = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
		// 	$extension = $request->file('file')->getClientOriginalExtension();
		// 	$fileName = $filename . '_' . time() . '.' . $extension;
		// 	$path = $request->file('file')->storeAs('img/slider', $fileName);
		// } else {
		// 	$path = 'noimage.jpg';
		// }

		Storage::put('img/slider', $request->file('file'));
		// $slider->photo = $path;

		// if ($slider->save()) {
		// 	return new SliderResource($slider);
		// }

		print_r($_POST);

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
