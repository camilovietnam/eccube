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
    h1.order-details {
        font-weight: bold;
        margin-top: 20px;
    }

    .product-row {
        margin-top: 10px;
        border-top: 1px solid black;
        padding-top: 10px;
    }

    .btn-change-address {
        background: #333;
        color: white!important;
        border-radius: 0;
        width: 60%;
        height: 40px;
        display: inline-block;
        text-align: center;
        padding-top: 12px;
    }
</style>

<div id="mypagecolumn">
    <!--{include file=$tpl_navi}-->

    <div id="mycontents_area">
        <div class="container-fluid">
            <div class="row">
                <!-- This is the left column with the product details -->
                <div class="col-8">
                    <!-- Top block, order details -->
                    <div>
                        <span class="st">
                            <!--{'mypage.order_detail.order_date'|trans}-->:
                        </span>
                            <!--{$tpl_arrOrderData.create_date|sfDispDBDate}-->
                        <br />

                        <span class="st">
                            <!--{'mypage.order_detail.order_number'|trans}-->:
                        </span>
                        <!--{$tpl_arrOrderData.order_id}-->
                        <br />
                        <!--{if $smarty.const.MYPAGE_ORDER_STATUS_DISP_FLAG}-->
                            <span class="st">
                                <!--{'mypage.order_detail.order_status'|trans}-->:
                            </span>
                            <!--{if $tpl_arrOrderData.status != $smarty.const.ORDER_PENDING}-->
                                <!--{$arrCustomerOrderStatus[$tpl_arrOrderData.status]|h}-->
                                <!--{else}-->
                                <span class="attention"><!--{$arrCustomerOrderStatus[$tpl_arrOrderData.status]|h}--></span>
                            <!--{/if}-->
                        <!--{/if}-->

                        <!--{if $is_price_change == true}-->
                            <div class="attention" Align="right">
                                ※金額が変更されている商品があるため、再注文時はご注意ください。
                            </div>
                        <!--{/if}-->
                    </div>
                    <!-- List of product details -->
                    <div>
                        <h1 class="order-details text-center">
                            <!--{'mypage.order_history.product_information'|trans}-->
                        </h1>

                        <!-- Now the list of items: -->
                        <!--{foreach from=$tpl_arrOrderDetail item=orderDetail}-->
                            <div class="row product-row">
                                <div class="col-2">
                                    <img src="/upload/save_image/nabe130.jpg" alt="" class="w-100">
                                </div>
                                <div class="col-8 text-left">
                                    <a<!--{if $orderDetail.enable}--> href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$orderDetail.product_id|u}-->"<!--{/if}-->><!--{$orderDetail.product_name|h}--></a><br />
                                    <!--{if $orderDetail.classcategory_name1 != ""}-->
                                    <!--{$orderDetail.classcategory_name1|h}--><br />
                                    <!--{/if}-->
                                    <!--{if $orderDetail.classcategory_name2 != ""}-->
                                    <!--{$orderDetail.classcategory_name2|h}-->
                                    <!--{/if}-->
                                    <br>

                                    <div class="row">
                                        <div class="col">Size: L</div>
                                        <div class="col">Price: 130</div>
                                        <div class="col">Quantity: 2</div>
                                    </div>

                                </div>
                            </div>
                        <!--{/foreach}-->
                        <hr>
                    </div>
                    <!-- Order information -->
                    <div>
                        <div class="row">
                            <div class="col">
                                <!--{assign var=shippingItem value=$arrShipping[0]}-->
                                <!--{$shippingItem.shipping_name01|h}-->&nbsp;<!--{$shippingItem.shipping_name02|h}-->
                                <br>
                                <!--{$arrPref[$shippingItem.shipping_pref]}--><!--{$shippingItem.shipping_addr01|h}--><!--{$shippingItem.shipping_addr02|h}-->
                                <br>
                                <!--{$shippingItem.shipping_tel01}-->-<!--{$shippingItem.shipping_tel02}-->-<!--{$shippingItem.shipping_tel03}-->

                                <div class="row mx-0 my-2 px-0">
                                    <div class="col mx-0 px-0">
                                        <!--{'mypage.order_detail.delivery_date'|trans}-->: <!--{$shippingItem.shipping_date|default:'指定なし'|h}-->
                                        <br>
                                        <!--{'mypage.order_detail.delivery_time'|trans}-->: <!--{$shippingItem.shipping_time|default:'指定なし'|h}-->
                                    </div>
                                    <div class="col text-right">
                                        <a href="" class="btn-change-address">
                                            Change address
                                        </a>
                                    </div>
                                </div>
                                <div class="row mb-4">
                                    <div class="col">
                                        <b>Payment info</b>
                                        <br>
                                        <!--{'mypage.order_detail.order_payment'|trans}-->:
                                        <!--{$arrPayment[$tpl_arrOrderData.payment_id]|h}-->
                                    </div>
                                </div>
                                <div class="row mb-4">
                                    <div class="col">
                                        <b>Email history:</b>
                                        <br>
                                        <!--{section name=cnt loop=$tpl_arrMailHistory}-->
                                            <!--{assign var=key value="`$tpl_arrMailHistory[cnt].template_id`"}-->
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <!--{$tpl_arrMailHistory[cnt].send_date|sfDispDBDate|h}-->
                                                    <br>
                                                    <a href="#" onclick="eccube.openWindow('./mail_view.php?send_id=<!--{$tpl_arrMailHistory[cnt].send_id}-->','mail_view','650','800'); return false;"><!--{$tpl_arrMailHistory[cnt].subject|h}--></a>
                                                </div>
                                            </div>
                                        <!--{/section}-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                 <!-- This is the column with the totals -->
                <div class="col-4">
                    <div class="row">
                        <div class="col">
                            Subtotal: <br>
                            Transport fee: <br>
                        </div>
                        <div class="col text-right">
                            <!--{$tpl_arrOrderData.subtotal|n2s}-->円 <br>
                            <!--{assign var=key value="deliv_fee"}--><!--{$tpl_arrOrderData[$key]|n2s|h}-->円 <br>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col">
                            Total amount:
                        </div>
                        <div class="col text-right">
                            <!--{$tpl_arrOrderData.payment_total|n2s}-->円 <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
