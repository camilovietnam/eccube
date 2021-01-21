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
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *}-->

<style>
    #footer {
        background: black;
        color: white;
    }

    div.footer-links {
        font-size: xx-small;
    }

    div.footer-links h1{
        font-size: xx-large;
    }

    div.footer-links .row {
        margin: 20px auto;
    }

    div#copyright {
        text-align: center;
    }
</style>
<!--▼FOOTER-->
<!--{strip}-->
<div id="footer_wrap">
    <div id="footer" class="clearfix">
        <div class="footer-links">
            <div class="row justify-content-center">
                <div class="col-2">当サイトについて</div>
                <div class="col-2">プライバシーポリシー </div>
                <div class="col-2">特定商取引法に基づく表記 </div>
                <div class="col-2">お問い合わせ</div>
            </div>
            <div class="row">
                <div class="col">
                    <h1>
                        <!--{$arrSiteInfo.shop_name|h}-->
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div id="copyright">Copyright ©
                        &nbsp;<!--{if $smarty.const.RELEASE_YEAR != $smarty.now|date_format:"%Y"}--><!--{$smarty.const.RELEASE_YEAR}-->-<!--{/if}--><!--{$smarty.now|date_format:"%Y"}-->
                        &nbsp;<!--{$arrSiteInfo.shop_name_eng|default:$arrSiteInfo.shop_name|h}--> All rights reserved.
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>
<!--{/strip}-->
<!--▲FOOTER-->
