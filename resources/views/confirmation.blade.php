{{-- 繼承 --}}
@extends('layouts.master')
{{-- 標籤頁名稱 --}}
@section('title','訂單資訊')
@section('content')
    <!-- Page Add Section Begin -->
    <section class="page-add cart-page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>{{__('Confirmation')}}<span>.</span></h2>
                        <a href="#">{{__('Home')}}</a>
                        <a href="#">{{__('Otherpage')}}</a>
                        <a class="active" href="#">{{__('Confirmation')}}</a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <img src="img/add.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->
    
    <!-- Cart Page Section Begin -->
    <div class="cart-page">
        <div class="container">
            <div class="cart-table">
                <table>
                    <thead>
                        <tr>
                            <th class="product-h">訂單編號</th>
                            <th>訂單日期</th>
                            <th class="quan">合計</th>
                            <th class="quan">訂單狀態</th>
                            <th class="quan">
                                <img src="img/qrcode.png" alt="">
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="price-col">27230112130301109</td>
                            <td class="price-col">2023/01/12</td>
                            <td class="price-col">NT$ 3620</td>
                            <td class="price-col">訂單處理中</td>
                            <td class="product-close">查閱</td>
                        </tr>
                        <tr>
                            <td class="price-col">32230112130301175</td>
                            <td class="price-col">2023/01/11</td>
                            <td class="price-col">NT$ 2010</td>
                            <td class="price-col">訂單處理中</td>
                            <td class="product-close">查閱</td>
                        </tr>
                        <tr>
                            <td class="price-col">47230112130301175</td>
                            <td class="price-col">2022/11/29</td>
                            <td class="price-col">NT$ 4260</td>
                            <td class="price-col">已完成</td>
                            <td class="product-close">查閱</td>
                        </tr>
                        <tr>
                            <td class="price-col">57230112130301178</td>
                            <td class="price-col">2022/11/27</td>
                            <td class="price-col">NT$ 1600</td>
                            <td class="price-col">已完成</td>
                            <td class="product-close">查閱</td>
                        </tr>
                        <tr>
                            <td class="price-col">32630112130301282</td>
                            <td class="price-col">2022/11/26</td>
                            <td class="price-col">NT$ 1200</td>
                            <td class="price-col">已完成</td>
                            <td class="product-close">查閱</td>
                        </tr>
                        <tr>
                            <td class="price-col">41630112130301274</td>
                            <td class="price-col">2022/10/16</td>
                            <td class="price-col">NT$ 2890</td>
                            <td class="price-col">已完成</td>
                            <td class="product-close">查閱</td>
                        </tr>
                        <tr>
                            <td class="price-col">12630112130301282</td>
                            <td class="price-col">2022/10/16</td>
                            <td class="price-col">NT$ 5250</td>
                            <td class="price-col">已完成</td>
                            <td class="product-close">查閱</td>
                        </tr>
                        <tr>
                            <td class="price-col">12630112130301249</td>
                            <td class="price-col">2022/10/12</td>
                            <td class="price-col">NT$ 6060</td>
                            <td class="price-col">已完成</td>
                            <td class="product-close">查閱</td>
                        </tr>
                        <tr>
                            <td class="price-col">36630112130301295</td>
                            <td class="price-col">2022/10/03</td>
                            <td class="price-col">NT$ 890</td>
                            <td class="price-col">已完成</td>
                            <td class="product-close">查閱</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="container">
            <div class="cart-table">
                <table>
                    <thead>
                        <tr>
                            <th class="total-cart"></th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
    <!-- Cart Page Section End -->
@endsection
