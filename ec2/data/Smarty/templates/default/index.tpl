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

<!--{strip}-->

<style>
    .splide__slide img {
        width: 100%;
    }
</style>
<script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@latest/dist/js/splide.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@latest/dist/css/splide.min.css">

<script>
  document.addEventListener( 'DOMContentLoaded', function () {
    new Splide( '.splide', {
      type: 'loop',
      autoplay: true,
      interval: 3000,
      pauseOnHover: true,
      lazyLoad: true
    } ).mount();
  } );
</script>

<div class="splide">
    <div class="splide__track">
        <ul class="splide__list">
            <li class="splide__slide">
                <img src="upload/save_image/slide_1.jpg" alt="">
            </li>
            <li class="splide__slide">
                <img src="upload/save_image/slide_2.jpg" alt="">
            </li>
            <li class="splide__slide">
                <img src="upload/save_image/slide_3.jpg" alt="">
            </li>
        </ul>
    </div>
</div>

<style>
    .new-products .row {
        margin: auto;
        margin-top: 50px;
        padding: 10px;
    }
    .new-products .col {
        width: 100%;
        height: 100%;
    }

    .new-products .item-1 {
        padding-top: 30px;
        text-transform: uppercase;
        text-align: center;
    }
    .new-products .item-1 hr {
        color: black;
        background: black;
        width: 20px;
        border: 1px solid black;
    }

    .new-products .item-1 button {
        margin-top: 10px;
        background: black;
        color: white;
    }

    .new-products .col h2 {
        font-weight: bold;
    }

    .new-products .product-name {
        font-weight: bold;
    }

    .new-products img {
        width: 100%;
    }
</style>

<div class="container">
    <div class="new-products">
        <div class="row">
            <div class="col item-1">
                <div>
                    <h2>New Item</h2>
                </div>
                <hr>
                <div>
                    新着商品
                </div>
                <div>
                    <button>More</button>
                </div>
            </div>
            <div class="col">
                <div>
                    <img src="upload/save_image/recipe130.jpg" alt="">
                </div>
                <div class="product-name">Name</div>
                <div>Price</div>
            </div>
            <div class="col">
                <div>
                    <img src="upload/save_image/recipe130.jpg" alt="">
                </div>
                <div class="product-name">Name</div>
                <div>Price</div>
            </div>
            <div class="col">
                <div>
                    <img src="upload/save_image/recipe130.jpg" alt="">
                </div>
                <div class="product-name">Name</div>
                <div>Price</div>
            </div>
        </div>
    </div>
</div>

<style>
    .recent-products .row {
        margin: auto;
        background: #f6f6f6;
        padding: 10px
    }
    .recent-products .col {
        width: 100%;
        height: 100%;
    }

    .recent-products .item-1 {
        padding-top: 30px;
        text-transform: uppercase;
        text-align: center;
    }
    .recent-products .item-1 hr {
        color: black;
        background: black;
        width: 20px;
        border: 1px solid black;
    }

    .recent-products .item-1 button {
        margin-top: 10px;
        background: black;
        color: white;
    }

    .recent-products .col h2 {
        font-weight: bold;
    }

    .recent-products .product-name {
        font-weight: bold;
    }

    .recent-products img {
        width: 100%;
    }
</style>

<div class="container">
    <div class="recent-products">
        <div class="row">
            <div class="col item-1">
                <div>
                    <h2>Recently seen</h2>
                </div>
                <hr>
                <div>
                    新着商品
                </div>
                <div>
                    <button>More</button>
                </div>
            </div>
            <div class="col">
                <div>
                    <img src="upload/save_image/recipe130.jpg" alt="">
                </div>
                <div class="product-name">Name</div>
                <div>Price</div>
            </div>
            <div class="col">
                <div>
                    <img src="upload/save_image/recipe130.jpg" alt="">
                </div>
                <div class="product-name">Name</div>
                <div>Price</div>
            </div>
            <div class="col">
                <div>
                    <img src="upload/save_image/recipe130.jpg" alt="">
                </div>
                <div class="product-name">Name</div>
                <div>Price</div>
            </div>
        </div>
    </div>
</div>
<!--{/strip}-->

