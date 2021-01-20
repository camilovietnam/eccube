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
    #login_wrapper h1 {
        font-size: xxx-large;
        border-bottom: 1px solid grey;
        margin-bottom: 50px;
    }

    #login_mypage {
        padding: 20px;
        background-color: #f6f6f6;
    }

    dl .input-text {
        width: 100%;
        height: 40px;
        border-radius: 3px;
        padding: 6px 12px;
    }

    dl {
        margin: auto;
    }

    dd {
        width: 100%;
    }

    #user_logo {
        background: #f6f6f6;
        margin: auto;
        padding-top: 25px;
        text-align: center;
    }

    #user_logo img {
        height: 90px;
        display: inline-block;
    }

    #user_logo, #user_form {
        width: 650px;
        margin: auto;
    }

    .login_memory {
        margin-top: 5px;
    }

    .login_memory input {
        width: 20px;
        height: 20px;
    }

    .button_area {
        background: #f6f6f6;
        text-align: center;
        margin-top: 50px;
    }

    .button_area .col_left button{
        color: #fff;
        background-color: #525263;
        border: 1px solid transparent;
        width: 100%;
        height: 56px;
    }

    .button_area .col_left button:hover {
        background: #3b3b47;
    }

    .col_right {
        text-align: left;
    }
</style>

<div id="login_wrapper">
    <h1>
        <!--{'common.login'|trans}-->
    </h1>

    <div id="user_logo">
        <img src="/user_data/packages/default/img/picture/user.svg" alt="">
    </div>

    <div id="user_form">
        <form name="login_mypage" id="login_mypage" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php" onsubmit="return eccube.checkLoginFormInputted('login_mypage')">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="login" />
            <input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->" />

            <div class="login_area">
                <div>
                    <dl class="formlist clearfix">
                        <!--{assign var=key value="login_email"}-->
                        <dd>
                            <span class="attention"><!--{$arrErr[$key]}--></span>
                            <input type="text" name="<!--{$key}-->" value="<!--{$tpl_login_email|h}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->; ime-mode: disabled;" class="input-text" placeholder="Email"/>
                        </dd>
                    </dl>
                    <dl class="formlist clearfix">
                        <!--{assign var=key value="login_pass"}-->
                        <dd>
                            <span class="attention"><!--{$arrErr[$key]}--></span>
                            <input type="password" name="<!--{$key}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" class="input-text" />
                            <p class="login_memory">
                                <!--{assign var=key value="login_memory"}-->
                                <input type="checkbox" name="<!--{$key}-->" value="1"<!--{$tpl_login_memory|sfGetChecked:1}--> id="login_memory" />
                                <label for="login_memory">
                                    <!--{'mypage.login_memory'|trans}-->
                                </label>
                            </p>
                        </dd>
                    </dl>

                    <div class="container button_area">
                        <div class="row">
                            <div class="col-12 col-md-6 col_left">
                                <button><!--{'common.login'|trans}--></button>
                            </div>
                            <div class="col-12 col-md-6 col_right">
                                <div>
                                    <a href="/forgot/">
                                        <!--{'mypage.forgot_login'|trans}-->
                                    </a>
                                </div>
                                <div>
                                    <a href="/entry/kiyaku.php">
                                        <!--{'mypage.register_new_member'|trans}-->
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="btn_area">
                        <ul>
                            <li>

                            </li>
                        </ul>
                    </div>


                </div>
            </div>
        </form>
    </div>
</div>
