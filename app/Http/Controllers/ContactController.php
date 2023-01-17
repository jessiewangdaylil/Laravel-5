<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Models\Element;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function contact()
    {
        $infos = Element::where('page', 'contact')->where('position', 'infos')->orderBy('sort', 'asc')->get();
        return view('contact', compact('infos'));
    }

    public function storeContact(Request $request)
    {
        $contact = Contact::create($request->only('subject', 'email', 'message', 'phone', 'name', 'salutation'));
        // $contact = new Contact;
        // $contact->subject = $request->get('subject');
        // $contact->message = $request->get('message');
        // $contact->phone = $request->get('phone');
        // $contact->email = $request->get('email');
        // $contact->name = $request->get('name');
        // $contact->save();
        if ($contact) {
            print('儲存成功');
            flash('聯絡單建立完成!!')->success()->important(); //綠色框，外加關閉按鈕
            //flash('聯絡單建立完成!!')->success(); //綠色框
            //flash('聯絡單建立完成!!')->error(); //紅色框
            //flash('聯絡單建立完成!!')->overlay();
        } else {
            print('儲存失敗');
            flash('聯絡單建立失敗!!')->error(); //紅色框
        }
        return redirect('/contact');
    }
}
