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

<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/ress.min.css">
<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/header.css">
<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/pgw3jgq.css">
<script src="<!--{$TPL_URLPATH}-->js/header.js"></script>

<div>
    <header class="header">
        <div class="searchIcon">
            <a href="#">
                <img src="<!--{$TPL_URLPATH}-->img/common/icon_search.svg" alt="Search">
            </a>
        </div>
        <div class="searchClose">
            <a href="#">
                <img src="<!--{$TPL_URLPATH}-->img/common/icon_close.svg" alt="Search">
            </a>
        </div>
        <h1>
            <a href="#">
                <img src="<!--{$TPL_URLPATH}-->img/common/hdr_logo.svg" alt="Merch View"
            </a>
        </h1>
        <div class="hdrMenu">
            <div class="favorite">
                <a href="#">
                    <img src="<!--{$TPL_URLPATH}-->img/common/icon_fav.svg" alt="">
                </a>
            </div>
            <div class="cart">
                <a href="#">
                    <img src="<!--{$TPL_URLPATH}-->img/common/icon_cart.svg" alt="">
                </a>
                <p class="num">
                    2
                </p>
            </div>
            <div class="login">
                <a href="#">
                    Log in
                </a>
            </div>
            <a id="menuButton" href="javascript:void(0);"><span></span><span></span><span></span></a>
        </div>
    </header>
    <div id="spMenu">
        <div class="spMenuInr">
            <ul class="spMenuBtn">
                <li class="login"><a href="#">Log in</a></li>
                <li class="favorite"><a href="#"><span>お気に入り</span></a></li>
            </ul>
            <div class="ftrNav">
                <ul>
                    <li><a href="#">サイトマップ</a></li>
                    <li><a href="#">利用規約</a></li>
                    <li><a href="#">運営会社</a></li>
                    <li><a href="#">プライバシーポリシー</a></li>
                    <li><a href="#">特定商取引法に基づく表示</a></li>
                    <li><a href="#">merchviewとは</a></li>
                </ul>
                <ul>
                    <li class="contact">お問い合わせ</li>
                    <li><a href="#">ユーザ用</a>　/　<a href="#">アーティスト用</a></li>
                </ul>
            </div>
            <div class="ftrBtm">
                <div class="ftrLogo"><img src="<!--{$TPL_URLPATH}-->img/common/hdr_logo.svg" alt=""></div>
                <p class="copyright">&copy; Merch View</p>
            </div>
        </div>
    </div>

    <div id="search">
        <div class="searchInr">
            <div class="searchBoxLeft">
                <ul class="searchBoxLeftMenu">
                    <li><a href="#">Topics</a></li>
                    <li><a href="#">Reccomend</a></li>
                    <li><a href="#">New Items</a></li>
                    <li><a href="#">Checked </a></li>
                </ul>
            </div>
            <div class="searchBox">
                <div class="searchForm">
                    <input type="text" placeholder="キーワードからさがす">
                    <input type="submit" value="Search">
                </div>
                <div class="searchKeyword">
                    <p class="searchTtl">人気のキーワード</p>
                    <ul>
                        <li><a href="#">#HIPHOP</a></li>
                        <li><a href="#">#アイドル</a></li>
                        <li><a href="#">#フジロック</a></li>
                        <li><a href="#">#FES</a></li>
                        <li><a href="#">#スウェット</a></li>
                        <li><a href="#">#T-Shirt</a></li>
                        <li><a href="#">#キャップ</a></li>
                        <li><a href="#">#アクセサリー</a></li>
                        <li><a href="#">#Bag</a></li>
                        <li><a href="#">#タオル</a></li>
                    </ul>
                </div>
                <ul class="searchMenu">
                    <li><a href="#">アーティストからさがす<span>Artist Search</span></a></li>
                    <li><a href="#">新着商品<span>New Arrival</span></a></li>
                </ul>
                <div class="feature">
                    <p class="searchTtl">Featured</p>
                    <ul>
                        <li><a href="#"><img src="<!--{$TPL_URLPATH}-->img/common/feature01.jpg" alt=""></a></li>
                        <li><a href="#"><img src="<!--{$TPL_URLPATH}-->img/common/mv_pickup01.jpg" alt=""></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!--{*I will remove this later, I'm keeping it only to remember how to check login:*}-->
<div>
    <!--{if $tpl_login or $isLogin}-->

    <!--{/if}-->
</div>

<!--{/strip}-->
<!--▲HEADER-->
