{{-- 繼承 --}}
@extends('layouts.master')
{{-- 標籤頁名稱 --}}
@section('title','首頁')

@section('content')
  <!-- Page Add Section Begin -->
  <section class="page-add">
      <div class="container">
          <div class="row">
              <div class="col-lg-4">
                  <div class="page-breadcrumb">
                      <h2>Contact us<span>.</span></h2>
                  </div>
              </div>
              <div class="col-lg-8">
                  <img src="img/add.jpg" alt="">
              </div>
          </div>
      </div>
  </section>
  <!-- Page Add Section End -->
 <!-- Contact Section Begin -->
    <div class="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <form action="#" class="contact-form">
                        <div class="row">
                            <div class="col-lg-6">
                                <input type="text" placeholder="{{__('Name')}}">
                            </div>
                            <div class="col-lg-2">
                              先生<br>
                              <input type="radio" placeholder="salutation" value="mr" name="salutation">
                            </div>
                            <div class="col-lg-2">
                              小姐<br>
                              <input type="radio" placeholder="salutation" value="miss" name="salutation">
                            </div>
                            <div class="col-lg-2">
                              女士<br>
                              <input type="radio" placeholder="salutation" value="ms" name="salutation">
                            </div>
                            <div class="col-lg-6">
                                <input type="email" placeholder="{{__('Users E-mail')}}">
                            </div>
                            <div class="col-lg-6">
                                 <input type="text" placeholder="{{__('Mobile')}}">
                            </div>
                            <div class="col-lg-12">
                                <input type="text" placeholder="{{__('Subject')}}">
                            </div>
                            <div class="col-lg-12">
                            許願課程類型
                            </div>
                            <div class="col-lg-3">
                              已存在課程<br>
                              <input type="radio" placeholder="exist" value=1
                               name="wishCourse">
                            </div>
                            <div class="col-lg-9 nice-select cart-select country-usa ">
                             <select name="catordog">
                                <optgroup label="Cats">
                                  <option>Tiger</option>
                                  <option>Leopard</option>
                                  <option>Lynx</option>
                                </optgroup>
                                <optgroup label="Dogs">
                                  <option>Grey Wolf</option>
                                  <option>Red Fox</option>
                                  <option>Fennec</option>
                                </optgroup>
                              </select>
                              </div>

                            <div class="col-lg-3">
                              新的課程需求<br>
                              <input type="radio" placeholder="salutation" value=0 name="wishCourse">
                            </div>
                            <div class="col-lg-9">
                                <textarea placeholder="{{__('Message')}}(留下您對課程的想法)"></textarea>
                            </div>
                            <div class="col-lg-12 text-right">
                                <button type="submit">{{__("Send message")}}</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-3 offset-lg-1">
                    <div class="contact-widget">
                        <div class="cw-item">
                            <h5>Location</h5>
                            <ul>
                                <li>1525 Awesome Lane, </li>
                                <li>Los Angeles, CA</li>
                            </ul>
                        </div>
                        <div class="cw-item">
                            <h5>Phone</h5>
                            <ul>
                                <li>+1 (603)535-4592</li>
                                <li>+1 (603)535-4556</li>
                            </ul>
                        </div>
                        <div class="cw-item">
                            <h5>E-mail</h5>
                            <ul>
                                <li>contact@violetstore.com</li>
                                <li>www.violetstore.com</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="map">
                <div class="row">
                    <div class="col-lg-12">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26440.72384129847!2d-118.24906619231132!3d34.06719475913053!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c659f50c318d%3A0xe2ffb80a9d3820ae!2sChinatown%2C%20Los%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1570213740685!5m2!1sen!2sbd"
                            height="560" style="border:0;" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact Section End -->
@endsection
