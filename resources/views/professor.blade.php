{{-- 繼承 --}}
@extends('layouts.master')
{{-- 標籤頁名稱 --}}
@section('title','師資介紹')
@section('content')
    <!-- Page Add Section Begin -->
    <section class="page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>{{__('Professor')}}<span>.</span></h2>
                        <a href="#">{{__('Home')}}</a>
                        <a href="#">{{__('CourseString')}}</a>
                        <a class="active" href="#">{{__('Professor')}}</a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <img src="img/add.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->

    
    <!-- Categories Page Section Begin -->
    <section class="categories-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="single-product-item">
                                <figure>
                                    <img src="img/products/img-11.jpg" alt="">
                                    <div class="p-status sale">專業</div>
                                </figure>
                                <div class="product-text">
                                    <a href="#">
                                        <h6>PHP</h6>
                                    </a>
                                    <p>戴老師</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="single-product-item">
                                <figure>
                                    <img src="img/products/img-12.jpg" alt="">
                                    <div class="p-status">認真</div>
                                    <div class="hover-icon">
                                        <a href="img/products/img-12.jpg" class="pop-up"><img
                                                src="img/icons/zoom-plus.png" alt=""></a>
                                    </div>
                                </figure>
                                <div class="product-text">
                                    <a href="#">
                                        <h6>ASP.NET</h6>
                                    </a>
                                    <p>許老師</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="single-product-item">
                                <figure>
                                    <img src="img/products/img-14.jpg" alt="">
                                    <div class="p-status sale">實用</div>
                                </figure>
                                <div class="product-text">
                                    <a href="#">
                                        <h6>自適應網頁排版</h6>
                                    </a>
                                    <p>麥老師</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="single-product-item">
                                <figure>
                                    <img src="img/products/img-15.jpg" alt="">
                                    <div class="hover-icon">
                                        <a href="img/products/img-15.jpg" class="pop-up"><img
                                                src="img/icons/zoom-plus.png" alt=""></a>
                                    </div>
                                </figure>
                                <div class="product-text">
                                    <a href="#">
                                        <h6>系統分析</h6>
                                    </a>
                                    <p>洪老師</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single-product-item">
                        <figure>
                            <img src="img/products/img-13.jpg" alt="">
                            <div class="p-status">帥氣</div>
                            <div class="hover-icon">
                                <a href="img/products/img-13.jpg" class="pop-up"><img src="img/icons/zoom-plus.png"
                                        alt=""></a>
                            </div>
                        </figure>
                        <div class="product-text">
                            <a href="#">
                                <h6>LARAVEL MVC</h6>
                            </a>
                            <p>林老師</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="more-product">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <a href="#" class="primary-btn">更多資訊</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Page Section End -->
@endsection
