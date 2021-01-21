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
        width: 50%;
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
        padding-left: 3px;
    }
    div.search-left option {
        color: black;
    }
    div.search-right {
        height: 25px;
        background: #f6f6f6;
        border-top-right-radius: 50px;
        border-bottom-right-radius: 50px;
        float: right;
        display: inline;
        width: 50%;
        padding-top: 3px;
    }
    div.search-right input {
        background: transparent;
        border: none;
        outline: none;
        width: 80%;
    }
    div.search-right .search-icon {
        display: inline-block;
        padding-top: 5px;
    }
    .link-item {
        color: black;
    }

    .link-item.shopping-cart {
        background-color: #F8F8F8;
        border-radius: 9999px;
        padding: 3px 0 0 5px;
    }

    div.cart-left, div.cart-right {
        display: inline-block;
    }

    div.cart-left {
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
        font-size: large;
        color: black;
        font-weight: bold;
    }

    div.col-links {
        padding-top: 8px;
        font-size: smaller;
    }

    div.col-links .col-4 {
        margin: 0;
        padding: 0;
    }

    .col-links .link-item span {
        margin-left:  3px;
    }

    .link_text a, .link-text a:link, .link-text a:active, a:visited{
        color: black;
    }

</style>

<div>
    <!--{if $tpl_login or $isLogin}-->
        <form name="header_login_form" id="header_login_form" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php"<!--{if !$tpl_login}--> onsubmit="return eccube.checkLoginFormInputted('header_login_form')"<!--{/if}-->>
            <input type="hidden" name="mode" value="login" />
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->" />
        </form>
    <!--{/if}-->
</div>
<div id="header_wrap">
    <div id="header" class="clearfix">
        <div class="container-fluid navi">
            <div class="row">
                <div class="col-12 col-md-4 col-search">
                    <div class="row">
                        <div class="offset-3 col-6 offset-md-0 col-md-12 justify-content-center">
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
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="logo text-center">
                        <h1>
                            <a href="/">
                                <!--{$arrSiteInfo.shop_name|h}-->
                            </a>
                        </h1>
                    </div>
                </div>
                <div class="col-12 col-md-4 col-links">
                    <div class="row">
                        <div class="col-4">
                            <div class="link-item">
                                <span class="fas fa-user fa-heart"></span>
                                <span class="link-text">
                                         <!--{'public.top.favorites'|trans}-->
                                    </span>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="link-item">
                                <!--{if $tpl_login or $isLogin}-->
                                    <span class="fas fa-sign-out-alt"></span>
                                    <span class="link-text">
                                            <a href="/mypage" onclick="eccube.fnFormModeSubmit('header_login_form', 'logout', '', ''); return false;">
                                                <!--{'common.logout'|trans}-->
                                            </a>
                                    </span>
                                <!--{else}-->
                                    <span class="fas fa-lock"></span>
                                    <span class="link-text">
                                        <a href="/mypage/login.php">
                                            <!--{'common.login'|trans}-->
                                        </a>
                                    </span>
                                <!--{/if}-->
                            </div>
                        </div>
                        <div class="col-4">
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
                </div>
            </div>
        </div>
    </div>
</div>
<!--{/strip}-->
<!--▲HEADER-->
