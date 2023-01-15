<?php

namespace App\Http\Controllers;

use App\Models\Element;

class AboutController extends Controller
{
    public function about()
    {
        $infos = Element::where('page', 'about')->where('position', 'infos')->orderBy('sort', 'asc')->get();
        return view('about', compact('infos'));
    }
}