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

<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/new_header.css">
<link rel="stylesheet" href="<!--{$TPL_URLPATH}-->css/pgw3jgq.css">

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
</div>

<div>
    <!--{if $tpl_login or $isLogin}-->
        <form name="header_login_form" id="header_login_form" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php"<!--{if !$tpl_login}--> onsubmit="return eccube.checkLoginFormInputted('header_login_form')"<!--{/if}-->>
            <input type="hidden" name="mode" value="login" />
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->" />
        </form>
    <!--{/if}-->
</div>
<!--{/strip}-->
<!--▲HEADER-->
