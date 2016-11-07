<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
    type="text/javascript">var ctx = '${ctx}', domain_image = '${domain_image}', domain_static = '${domain_static}';</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../assets/css/base.css">
<script src="../../assets/js/jquery-1.4.2.min.js"></script>

<html>
<head>
    <title>Title</title>
    <style>

    </style>
    <script>
        function goBuy() {
            $.ajax({
                type: "get",
                url: 'http://localhost:8182/order/confirm',
                async: false,
                success(data)
                {
                    location.href = "http://localhost:8182/order/confirm";
                }
            });
        }
    </script>
</head>
<body>
<div>
    <div></div>
    <div id="index_new_top" class="index_new_top" style="margin-top: 0px;">
        <a href="javascript:;" rel="nofollow" onclick="getBack()" class="back"></a>
        <a href="javascript:void(0)" class="tab on"><font>商品</font></a>
    </div>
    <div id="int_content" class="ind_content" style="margin-bottom:0.48rem;">

        <div id="benlai_banner" class="new_goods_pic" style="margin-top: 0.44rem">
            <div data-module="content" class="wap_pic"
                 style="transition: all 0.4s ease; transform: translate3d(-100%, 0px, 0px);"><a
                style="transform: translate3d(0%, 0px, 0px);"><img
                src="https://image5.benlailife.com/ProductImages/000/000/041/216/app/33815c40-0533-405c-8edf-4bebd5813eb8.jpg"></a>
                <a style="transform: translate3d(100%, 0px, 0px);"><img
                    src="https://image1.benlailife.com/ProductImages/000/000/041/216/app/2ddea77c-0ed3-49f2-8e1a-200dcc5a51f3.jpg"></a>
                <a style="transform: translate3d(200%, 0px, 0px);"><img
                    src="https://image1.benlailife.com/ProductImages/000/000/041/216/app/07a7302d-1888-4acf-b78b-27cd4ec769bb.jpg"></a>
                <a style="transform: translate3d(300%, 0px, 0px);"><img
                    src="https://image1.benlailife.com/ProductImages/000/000/041/216/app/4b502f20-4449-46be-ab5b-cfcd72d00145.jpg"></a>
                <a style="transform: translate3d(400%, 0px, 0px);"><img
                    src="https://image5.benlailife.com/ProductImages/000/000/041/216/app/33815c40-0533-405c-8edf-4bebd5813eb8.jpg"></a>
                <a style="transform: translate3d(500%, 0px, 0px);"><img
                    src="https://image1.benlailife.com/ProductImages/000/000/041/216/app/2ddea77c-0ed3-49f2-8e1a-200dcc5a51f3.jpg"></a>
            </div>
            <ul data-module="nav">
                <a class=""></a>
                <a class="on"></a>
                <a class=""></a>
                <a class=""></a>
            </ul>
        </div>

        <div class="new_goods_box">

            <dl class="info">
                <div class="name">台湾葡萄柚 约1kg</div>
                <div class="word">
                    果肉柔嫩，多汁爽口，口感舒适的舌尖诱惑
                </div>
                <div class="price">

                    <p class="now">¥<span>39</span>.90</p>

                    <p class="old">¥64</p>

                    <p class="sale">直降24.10元</p>

                </div>

            </dl>
            <dl class="member">
                <dt><font>会员</font>专享价</dt>
                <dd>
                    黑卡/钻石38.3元;
                    白金/金卡39.5元;
                    银卡/绿卡/注册39.9元;
                </dd>


            </dl>
            <dl class="callout" onclick="productTagShow()">
                <a href="javascript:void(0)">
                    <em>全面质检</em>
                    <em>资深买手</em>
                </a>
            </dl>


        </div>

        <div class="new_goods_norm">
            <dl>
                <dd>
                    <p><em>现在有货</em></p>
                </dd>
                <dt><span>包邮</span>泉州市满168.00元包邮</dt>
            </dl>
        </div>
    </div>
    <div class="newlist_tab">
        <a href="http://m.benlai.com/qz/productDetailNew/41216" class="on"><font class="noline">图文详情</font></a>
    </div>
    <div class="detl_pic">
        <img
            src="https://image5.benlailife.com//ProductNewDetailImage/0102032200C/29c8f87b-58eb-453b-82f3-f781880e7e1b.jpg">
        <img
            src="https://image5.benlailife.com//ProductNewDetailImage/0102032200C/7a87c9a5-23d4-4d24-be3d-96d47291b5c4.jpg">
    </div>
    <div class="new_goods_buy">

        <a href="javascript:void (0)" onclick="addProductToCartQty(41216,1,0,1)" class="btn">加入购物车</a>

        <a href="javascript:void (0)" onclick="goBuy()" class="buy_btn">立即购买</a>
    </div>
</div>

</body>
</html>
