<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TsaiController extends Controller
{
    public function course(){
        return view('page.course');
        // return '測試';
    }
}
