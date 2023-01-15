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

    // public function shop()
    // {
    //     $items_new_product = Item::where('cgy_id', 1)->where('enabled', true)->orderBy('sort', 'asc')->get();
    //     $items_works = Item::where('cgy_id', 2)->where('enabled', true)->orderBy('sort', 'asc')->get();
    //     $items_teach = Item::where('cgy_id', 3)->where('enabled', true)->orderBy('sort', 'asc')->get();
    //     return view('shop', compact('items_new_product', 'items_works', 'items_teach'));
    // }

    // public function productDetail(Item $item)
    // {
    //     return view('product-detail', compact('item'));
    // }

    // public function blog()
    // {
    //     //取得最新消息的所有文章
    //     $cgy = Cgy::find(1);
    //     //$articles_news = $cgy->articles()->paginate(5);
    //     $articles_news = Article::where('cgy_id', 1)->paginate(5);
    //     $cgies = Cgy::get();
    //     return view('blog', compact('cgy', 'articles_news', 'cgies'));
    // }

    // public function blogDetail()
    // {
    //     return view('blog-detail');
    // }

    // //儲存聯絡單
    // public function storeContact(Request $request)
    // {
    //     $contact = Contact::create($request->only('subject', 'email', 'message', 'mobile', 'name'));
    //     if ($contact) {
    //         print('儲存成功');
    //         flash('聯絡單建立完成!!')->success()->important(); //綠色框，外加關閉按鈕
    //         //flash('聯絡單建立完成!!')->success(); //綠色框
    //         //flash('聯絡單建立完成!!')->error(); //紅色框
    //         //flash('聯絡單建立完成!!')->overlay();
    //     } else {
    //         print('儲存失敗');
    //         flash('聯絡單建立失敗!!')->error(); //紅色框
    //     }
    //     return redirect('/contact');
    // }
}