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
<style>
    .order-list .row-order {
        border-top: 1px solid black;
        padding: 25px 0;
    }

    .order-list .detail-btn {
        padding: 8px;
        margin-top: 20px;
        border: 1px solid black;
        display: inline-block;
    }

    .order-items .row {
        margin-bottom: 15px;
    }
</style>

<div id="mypagecolumn">
    <!--{if $tpl_navi != ""}-->
        <!--{include file=$tpl_navi}-->
    <!--{else}-->
        <!--{include file="`$smarty.const.TEMPLATE_REALDIR`mypage/navi.tpl"}-->
    <!--{/if}-->
    <div id="mycontents_area">
        <form name="form1" id="form1" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="order_id" value="" />
            <input type="hidden" name="pageno" value="<!--{$objNavi->nowpage}-->" />
            <h3><!--{$tpl_subtitle|h}--></h3>
            <!--{if $objNavi->all_row > 0}-->
                <p><span class="attention"><!--{$objNavi->all_row}-->件</span>の購入履歴があります。</p>
                <div class="pagenumber_area">
                    <!--▼ページナビ-->
                    <!--{$objNavi->strnavi}-->
                    <!--▲ページナビ-->
                </div>
                <div class="container-fluid order-list">
                    <!--{section name=cnt loop=$arrOrder}-->
                    <div class="row row-order">
                        <div class="col-5">
                            <b><!--{$arrOrder[cnt].create_date|sfDispDBDate}--><br></b>
                            <b>Code order</b>: <!--{$arrOrder[cnt].order_id}--><br>
                            <b>Order status:</b>
                            <!--{if $smarty.const.MYPAGE_ORDER_STATUS_DISP_FLAG }-->
                                <!--{assign var=order_status_id value="`$arrOrder[cnt].status`"}-->
                                <!--{if $order_status_id != $smarty.const.ORDER_PENDING }-->
                                    <span class="alignC"><!--{$arrCustomerOrderStatus[$order_status_id]|h}--></span>
                                    <!--{else}-->
                                    <span class="alignC attention"><!--{$arrCustomerOrderStatus[$order_status_id]|h}--></span>
                                <!--{/if}-->
                            <!--{/if}-->
                            <br>
                            <a class="detail-btn" href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/history.php?order_id=<!--{$arrOrder[cnt].order_id}-->">
                                <!--{'mypage.order_history.btn_details'|trans}-->
                            </a>
                        </div>
                        <div class="col-7 order-items">
                            <!--{* List of order items*}-->
                            <div class="row">
                                <div class="col text-center">
                                    <h2>
                                        <b>
                                            <!--{'mypage.order_history.product_information'|trans}-->
                                        </b>
                                    </h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-3">
                                    <img src="/upload/save_image/recipe130.jpg" alt="" style="width: 100%">
                                </div>
                                <div class="col-9 mx-0 px-0">
                                    <div><b>アーティスト名</b></div>
                                    <div><b>Colorful CUBE</b></div>
                                    <div><b>Color</b>: </div>
                                    <div class="row">
                                        <div class="col">
                                            <b>Size</b>: L
                                        </div>
                                        <div class="col">
                                            <b>Price</b>: 308
                                        </div>
                                        <div class="col">
                                            <b>Quantity</b>: 1
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-3">
                                    <img src="/upload/save_image/recipe130.jpg" alt="" style="width: 100%">
                                </div>
                                <div class="col-9 mx-0 px-0">
                                    <div><b>アーティスト名</b></div>
                                    <div><b>Colorful CUBE</b></div>
                                    <div><b>Color</b>: </div>
                                    <div class="row">
                                        <div class="col">
                                            <b>Size</b>: L
                                        </div>
                                        <div class="col">
                                            <b>Price</b>: 308
                                        </div>
                                        <div class="col">
                                            <b>Quantity</b>: 1
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!--{/section}-->
                </div>

            <!--{else}-->
                <p>購入履歴はありません。</p>
            <!--{/if}-->
        </form>
    </div>
</div>
