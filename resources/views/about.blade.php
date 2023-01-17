{{-- 繼承 --}}
@extends('layouts.master')
{{-- 標籤頁名稱 --}}
@section('title','協會初衷')

@section('content')

<<<<<<< HEAD
<!-- Lookbok Section Begin -->
    <section class="lookbok-section">
        <div class="container-fluid">
            <div class="row">
              @foreach ($infos as $info)
                <div class="col-lg-4 offset-lg-1">
                    <div class="lookbok-left">
                        <div class="section-title">
                            <h2>{{ $info->title }} <br />{{-- $info->subtitle --}}</h2>
                        </div>
                        <div>{{ $info->content }}</div>
                        <p></p>
                        {{-- <a href="#" class="primary-btn look-btn">See More</a> --}}
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1">
                    <div class="lookbok-pic">
                      <br><br><br>
                        <img src="{{ Voyager::image($info->pic) }}" alt="">
                        <div class="pic-text">{{--education--}}</div>
                    </div>
                </div>
              @endforeach
            </div>
        </div>
        <br><br>
    </section>
    <!-- Lookbok Section End -->


=======
>>>>>>> 惟萱
@endsection
