{{-- 繼承 --}}
@extends('layouts.master')
{{-- 標籤頁名稱 --}}
@section('title','結帳頁面')
@section('content')
    <!-- Page Add Section Begin -->
    <section class="page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>{{__('CheckOut')}}<span>.</span></h2>
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
                            <th class="product-h">品項</th>
                            <th>價格</th>
                            <th class="quan">數量</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="product-col">
                                <img src="img/product/product-1.jpg" alt="">
                                <div class="p-title">
                                    <h5>Blue Dotted Shirt</h5>
                                </div>
                            </td>
                            <td class="price-col">$29</td>
                            <td class="quantity-col">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </td>
                            <td class="total">$29</td>
                            <td class="product-close">x</td>
                        </tr>
                        <tr>
                            <td class="product-col">
                                <img src="img/product/product-1.jpg" alt="">
                                <div class="p-title">
                                    <h5>Blue Dotted Shirt</h5>
                                </div>
                            </td>
                            <td class="price-col">$29</td>
                            <td class="quantity-col">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </td>
                            <td class="total">$29</td>
                            <td class="product-close">x</td>
                        </tr>
                        <tr>
                            <td class="product-col">
                                <img src="img/product/product-1.jpg" alt="">
                                <div class="p-title">
                                    <h5>Blue Dotted Shirt</h5>
                                </div>
                            </td>
                            <td class="price-col">$29</td>
                            <td class="quantity-col">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </td>
                            <td class="total">$29</td>
                            <td class="product-close">x</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="shopping-method">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="total-info">
                            <div class="total-table">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="total-cart">總計</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="total-cart-p">$39</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <form action="#" class="checkout-form">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="payment-method">
                            <h3>付款方式</h3>
                            <ul>
                                <li>Paypal <img src="img/paypal.jpg" alt=""></li>
                                <li>Credit / Debit card <img src="img/mastercard.jpg" alt=""></li>
                            </ul>
                            <button type="submit">結帳</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Cart Page Section End -->
@endsection
