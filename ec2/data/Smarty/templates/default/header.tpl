<!--{*
 * This file is part of EC-CUBE
 *
 * Copyright(c) EC-CUBE CO.,LTD. All Rights Reserved.
 *
 * http://www.ec-cube.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.    See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA    02111-1307, USA.
 *}-->

<!--▼HEADER-->
<!--{strip}-->
<style>
    #header {
        margin-top : 20px;
    }

    div.search-left {
        background: black;
        color: white;
        border-top-left-radius: 50px;
        border-bottom-left-radius: 50px;
        height: 25px;
        width: 43%;
        float: left;
        display: inline-block;
    }

    div.search-left select{
        background: transparent;
        color: white;
        height: 25px;
        border: none;
        outline: 0;
        width: 100%;
    }

    div.search-left option {
        color: black;
    }

    div.search-right {
        height: 25px;
        background: #f6f6f6;
        border-top-right-radius: 50px;
        border-bottom-right-radius: 50px;
        width: 57%;
        float: right;
    }

    div.search-right input {
        background: transparent;
        border: none;
        outline: none;
        float: left;
        width: 100px;
    }

    div.search-right .search-icon {
        display: inline-block;
        padding-top: 5px;
    }

    .link-item {
        display: inline-block;
        color: black;
        margin: 5px 10px;
    }

    .link-item .link-text{
        display: inline-block;
        margin-left: 5px;
    }

    .link-item.shopping-cart {
        background-color: #F8F8F8;
        padding: 5px 10px;
        border-radius: 9999px;
        width: 80px;
    }

    .shopping-cart .cart-left, .shopping-cart .cart-right {
        display: inline-block;
    }

    .shopping-cart .cart-left {
        float: left;
    }

    .badge {
        display: inline-block;
        border-radius: 99999px;
        box-sizing: border-box;
        padding: 5px;
        height: 17px;
        font-size: 10px;
        line-height: 0.7;
        vertical-align: top;
        color: #fff;
        text-align: left;
        white-space: nowrap;
        background-color: #DE5D50;
    }

    div.logo h1 {
        font-size: xx-large;
        color: black;
        font-weight: bold;
    }

    div.top-links {
        color: black;
    }

</style>
    <div id="header_wrap">
        <div id="header" class="clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-4">
                        <div class="search-left">
                            <select name="category-id" class="category-id">
                                <option value="">Tất cả sản phẩm</option>
                                <option value="1">Gelato</option>
                                <option value="3">　Món tráng miệng ngon</option>
                                <option value="4">　　CUBE</option>
                                <option value="8">　　　ABC</option>
                                <option value="12">Test</option>
                                <option value="5">Bánh mì kẹp kem</option>
                                <option value="6">　Trái cây</option>
                                <option value="2">Đồng Hồ</option>
                                <option value="11">　Boy London</option
                                <option value="10">　Julius</option>
                                <option value="9">　Latem</option>
                                <option value="7">Điện thoại</option>
                            </select>
                        </div>
                        <div class="search-right">
                            <input type="text" placeholder="Nhập từ khóa">
                            <div class="search-icon">
                                <span class="fas fa-search"></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-8 text-right">
                        <div class="link-item">
                            <span class="fas fa-user fa-heart"></span>
                            <span class="link-text">
                                Yêu thích
                            </span>
                        </div>
                        <div class="link-item">
                            <span class="fas fa-user fa-lock"></span>
                            <span class="link-text">
                                Đăng nhập
                            </span>
                        </div>

                        <div class="link-item shopping-cart">
                            <div class="cart-left">
                                <span class="fas fa-shopping-cart"></span>
                                <span class="badge">
                                    0
                                </span>
                            </div>
                            <div class="cart-right">
                                ₫ 0
                            </div>
                        </div>
                    </div>
                </div>
                <div class="logo">
                    <div class="row">
                        <div class="col">
                            <h1>
                                <!--{$arrSiteInfo.shop_name|h}-->
                            </h1>
                        </div>
                    </div>
                </div>

                <div class="top-links">
                    <div class="row justify-content-center">
                        <div class="col-2">
                            Link 1
                        </div>
                        <div class="col-2">
                            Link 2
                        </div>
                        <div class="col-2">
                            Link 3
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--{/strip}-->
<!--▲HEADER-->
