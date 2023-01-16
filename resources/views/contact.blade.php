{{-- 繼承 --}}
@extends('layouts.master')
{{-- 標籤頁名稱 --}}
@section('title','聯絡我們')

@section('content')

<script>
// <!-- Flash Message Overlay會用到，需保留 -->
$('#flash-overlay-modal').modal();
// <!-- Flash Message 3秒之後消失，非必須 -->
$('div.alert').delay(3000).fadeOut(350);
</script>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- Page Add Section Begin -->
    <section class="page-add">
        <div class="container">
          @foreach ($infos as $info)
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>{{ $info->title }}<span>.</span></h2>
                    </div>
                </div>
                {{-- <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        @include('flash::message')
                    </div>
                </div> --}}
                <div class="col-lg-8">
                    <img src="{{ Voyager::image($info->pic) }}" alt="">
                </div>
            </div>
          @endforeach
        </div>
    </section>
    <!-- Page Add Section End -->

    <!-- Contact Section Begin -->
    <div class="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <form method="POST" action="sendmessage" class="contact-form">
                      @csrf
                        <div class="row">
                            <div class="col-lg-4">
                                <input type="text" placeholder="{{ __('Name') }} {{ __('(Required)') }}" id="name" name="name" required>
                            </div>
                            {{-- <div class="col-lg-2">
                              <select name="Salutation">
                                <option value="Sir">先生</option>
                                <option value="Lady">小姐</option>
                                <option value="Other">貴賓</option>
                              </select>
                            </div> --}}
                            <div class="col-lg-3">
                                <input type="text" placeholder="{{ __('Phone') }} {{ __('(Required)') }}" name="phone" required>
                            </div>
                            <div class="col-lg-5">
                                <input type="email" placeholder="{{ __('E-mail') }}" name="email">
                            </div>
                            <div class="col-lg-12">
                                {{-- <input type="text" placeholder="{{ __('Subject') }}" name="subject" required> --}}
                              <div class="col-lg-12 nice-select cart-select country-usa">
                                <select name="subject" id="subject">
                                  <option value='default' selected='selected'>請選擇訊息類別</option>
                                  <option value="Wish">許願</option>
                                  <option value="Complaint">抱怨</option>
                                  <option value="Other">其他</option>
                                </select>
                              </div><br><br><br><br>
                            </div>
                            <div class="col-lg-12">
                                <textarea placeholder="{{ __('Message') }} {{ __('(Required)') }}" name="message" required></textarea>
                            </div>
                            <div class="col-lg-12 text-right">
                                <button type="submit">{{ __('Send message') }}</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-3 offset-lg-1">
                    <div class="contact-widget">
                        <div class="cw-item">
                            <h5>{{ __('Location') }}</h5>
                            <ul>
                                <li>{{ setting('association.location') }}</li>
                                <br>
                                {{-- <li>Los Angeles, CA</li> --}}
                            </ul>
                        </div>
                        <div class="cw-item">
                            <h5>{{ __('Phone') }}</h5>
                            <ul>
                                <li>{{ setting('association.phone') }}</li>
                                <br>
                                {{-- <li>+1 (603)535-4556</li> --}}
                            </ul>
                        </div>
                        <div class="cw-item">
                            <h5>{{ __('E-mail') }}</h5>
                            <ul>
                                <li>{{ setting('association.email') }}</li>
                                <br>
                                {{-- <li>www.violetstore.com</li> --}}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            {{-- <div class="map">
                <div class="row">
                    <div class="col-lg-12">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26440.72384129847!2d-118.24906619231132!3d34.06719475913053!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c659f50c318d%3A0xe2ffb80a9d3820ae!2sChinatown%2C%20Los%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1570213740685!5m2!1sen!2sbd"
                            height="560" style="border:0;" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div> --}}
        </div>
    </div>
    <!-- Contact Section End -->


@endsection
