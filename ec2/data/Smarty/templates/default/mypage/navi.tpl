<!--{*
/*
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
 */
*}-->
<div id="mynavi_area">
    <!--{strip}-->
    <style>
        .mynavi_list {
            margin: 50px auto;
        }
        .mynavi_list .col {
            border: 1px solid black;
            margin: 0;
            padding: 0;
            height: 50px;
            text-align: center;
        }

        .mynavi_list a {
            width: 100%;
            height: 100%;
            display: inline-block;
            padding-top: 15px;
        }

        .mynavi_list a, .mynavi_list a:link, .mynavi_list a:active{
            color: black;
        }

        .mynavi_list a:hover, .mynavi_list a.selected {
            color: #DE5D50;
        }

    </style>
    <!--{* 会員状態 *}-->
    <!--{if $tpl_login}-->
    <div class="container">
        <div class="row mynavi_list">
            <div class="col">
                <a href="./<!--{$smarty.const.DIR_INDEX_PATH}-->" class="<!--{if $tpl_mypageno == 'index'}--> selected<!--{/if}-->">
                    <!--{'mypage.headers.order_history'|trans}-->
                </a>
            </div>
            <div class="col my-auto">
                <a href="change.php" class="<!--{if $tpl_mypageno == 'change'}--> selected<!--{/if}-->">
                    <!--{'mypage.headers.member_info'|trans}-->
                </a>
            </div>
            <div class="col">
                <a href="delivery.php" class="<!--{if $tpl_mypageno == 'delivery'}--> selected<!--{/if}-->">
                    <!--{'mypage.headers.delivery_information'|trans}-->
                </a>
            </div>
            <!--{if $smarty.const.OPTION_FAVORITE_PRODUCT == 1}-->
            <div class="col">
                <li>
                    <a href="/not-implemented" class="<!--{if $tpl_mypageno == 'not_yet'}--> selected<!--{/if}-->">
                        <!--{'mypage.headers.payment_information'|trans}-->
                    </a>
                </li>
            </div>
            <!--{/if}-->
            <div class="col">
                <a href="/not-implemented" class="<!--{if $tpl_mypageno == 'not_yet'}--> selected<!--{/if}-->">
                    <!--{'mypage.headers.cancel_account'|trans}-->
                </a>
            </div>
        </div>
    </div>
    <!--{* 退会状態 *}-->
    <!--{else}-->
    <li>
        <a href="<!--{$smarty.const.TOP_URL}-->" class="<!--{if $tpl_mypageno == 'index'}--> selected<!--{/if}-->">
            購入履歴一覧
            <!--{'mypage.headers.order_history'|trans}-->
        </a>
    </li>
    <!--{if $smarty.const.OPTION_FAVORITE_PRODUCT == 1}-->
    <li>
        <a href="<!--{$smarty.const.TOP_URL}-->" class="<!--{if $tpl_mypageno == 'favorite'}--> selected<!--{/if}-->">
            お気に入り一覧
        </a>
    </li>
    <!--{/if}-->
    <li>
        <a href="<!--{$smarty.const.TOP_URL}-->" class="<!--{if $tpl_mypageno == 'change'}--> selected<!--{/if}-->">
            会員登録内容変更
        </a>
    </li>
    <li>
        <a href="<!--{$smarty.const.TOP_URL}-->" class="<!--{if $tpl_mypageno == 'delivery'}--> selected<!--{/if}-->">
            お届け先追加・変更
        </a>
    </li>
    <li>
        <a href="<!--{$smarty.const.TOP_URL}-->" class="<!--{if $tpl_mypageno == 'refusal'}--> selected<!--{/if}-->">
        <a href="<!--{$smarty.const.TOP_URL}-->" class="<!--{if $tpl_mypageno == 'refusal'}--> selected<!--{/if}-->">
            退会手続き
        </a>
    </li>
    <!--{/if}-->


    <!--▼現在のポイント-->
    <!--{if $point_disp !== false}-->
    <div class="point_announce clearfix">
        <p>ようこそ&nbsp;／&nbsp;
            <span class="user_name"><!--{$CustomerName1|h}--> <!--{$CustomerName2|h}-->様</span>
            <!--{if $smarty.const.USE_POINT !== false}-->&nbsp;
            現在の所持ポイントは&nbsp;<span class="point st"><!--{$CustomerPoint|n2s|default:"0"|h}-->pt</span>&nbsp;です。
            <!--{/if}-->
        </p>
    </div>
    <!--{/if}-->
    <!--▲現在のポイント-->
    <!--{/strip}-->

</div>
<!--▲NAVI-->
