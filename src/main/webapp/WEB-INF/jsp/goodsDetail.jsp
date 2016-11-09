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
    <style>
        .detail_pics_list{
           width: 100%;
            text-align: center;
        }
        .detail_pics_list a.detai_pic_a{
            height: 0.3rem;
            line-height: 0.3rem;
            text-align: center;
        }
        .detail_pics_list a font{
            text-align: center;
            color: #abd13e;
            font-size: 0.16rem;
        }
        .pName {
            width: 100%;
            height: 3.642em;
            background: rgba(0, 0, 0, 0.2);
            position: absolute;
            float: inherit;
            bottom: 0;
        }

        .clearfix {
            zoom: 1;
        }

        .clearfix:after {
            content: "";
            display: block;
            height: 0;
            clear: both;
            visibility: hidden;
        }

        .pItems dl {
            padding: 0.535em 0.714em;
            line-height: 1.607em;
        }

        .pItems dt .p {
            color: #fa6400;
            font-size: 1.428em;
        }

        .pItems dt .s {
            color: #969696;
            font-size: 0.857em;
            text-decoration: line-through;
        }

        .pItems .even {
            width: auto;
            max-width: 70%;
            min-width: 50%;
            word-break: break-all;
        }

        .pItems dd div {
            float: left;
        }

        .pItems .evening {
            width: auto;
            max-width: 50%;
            min-width: 30%;
            word-break: break-all;
        }

        .lineBetween {
            height: 0.0714rem;
            overflow: hidden;
            background-color: #f0f0f0;
        }

        form {
            display: block;
            margin-top: 0rem;
        }

        div {
            display: block;
        }

        .pAddr {
            padding: 0.714rem;
        }

        .pAddr .dt {
            float: left;
            line-height: 2.142rem;
        }

        .pAddr .dd {
            float: left;
            border: 1px solid #dcdcdc;
            width: 0.12785rem;
            height: 0.2071rem;
        }

        .addArea {
            float: left;
            width: 0.12785rem;
            height: 0.2071rem;
        }

        .addArea .text {
            position: relative;
            padding: 0 0.2071rem 0 0.0357rem;
            line-height: 0.2071rem;
            overflow: hidden;
        }

        .addArea .text b {
            position: absolute;
            width: 0.2071rem;
            height: 0.2071rem;
            background: url(../../assets/images/common/searchicon.png) no-repeat -0.5035rem -0.25rem;
            -webkit-background-size: 0.714rem 0.9642rem;
            background-size: 0.714rem 0.9642rem;
            top: 0;
            right: 0;
        }

        .pAddr .tip {
            float: left;
            line-height: 0.2142rem;
            margin-left: 0.0428rem;
        }

        .pBuyNum {
            padding-top: 0.357rem;
        }

        .pBuyNum, .packageDetail {
            padding: 0.0714rem;
        }

        .pBuyNum .dt {
            float: left;
            line-height: 0.5285rem;
        }

        .pBuyNum .dd {
            float: right;
            margin-right: 0.4rem;
            border: 1px solid #969696;
            border-radius: .01rem;
            line-height: 0.3285rem;
        }
        .pBuyNum .dd a{
            float: left;
            line-height: 0.3285rem;
            height: 0.3285rem;
            font-family: "黑体", Arial;
            font-size: 0.16rem;
            text-align: center;
            width: 0.3rem;
        }
        .pBuyNum .dd .num_input{
            float: left;
            line-height: 0.3285rem;
            width: 0.5rem;
            height: 0.3285rem;

        }
        .pBuyNum .dd .num_input input{
            float: left;
            line-height: 0.3285rem;
            width: 0.5rem;
            text-align: center;
            font-family: "黑体", Arial;
            font-size: 0.16rem;
            height: 0.3285rem;

        }

    </style>
</head>
<body>
<div>
    <div></div>
    <div id="index_new_top" class="index_new_top" style="margin-top: 0px;">
        <a href="javascript:;" rel="nofollow" onclick="getBack()" class="back"></a>
        <a href="javascript:void(0)" class="tab on"><font>商品</font></a>
    </div>
    <div id="int_content" class="ind_content" style="margin-bottom:0.48rem;">

        <%--<div id="benlai_banner" class="new_goods_pic" style="margin-top: 0.44rem">
            <div data-module="content" class="wap_pic">--%>
        <div>
            <div>
                <a><img
                    src="https://image5.benlailife.com/ProductImages/000/000/041/216/app/33815c40-0533-405c-8edf-4bebd5813eb8.jpg"></a>
                <%-- <a ><img src="https://image1.benlailife.com/ProductImages/000/000/041/216/app/2ddea77c-0ed3-49f2-8e1a-200dcc5a51f3.jpg"></a>
                 <a ><img
                     src="https://image1.benlailife.com/ProductImages/000/000/041/216/app/07a7302d-1888-4acf-b78b-27cd4ec769bb.jpg"></a>
                 <a ><img src="https://image1.benlailife.com/ProductImages/000/000/041/216/app/4b502f20-4449-46be-ab5b-cfcd72d00145.jpg"></a>
                 <a  ><img src="https://image5.benlailife.com/ProductImages/000/000/041/216/app/33815c40-0533-405c-8edf-4bebd5813eb8.jpg"></a>
                 <a  ><img src="https://image1.benlailife.com/ProductImages/000/000/041/216/app/2ddea77c-0ed3-49f2-8e1a-200dcc5a51f3.jpg"></a>--%>
            </div>
            <ul data-module="nav">
                <a class=""></a>
                <a class="on"></a>
                <a class=""></a>
                <a class=""></a>
            </ul>
        </div>

        <%-- <div class="pName clearfix">
             <div class="dt J_name_content"><span class="p-name-content">
                 <span
                     style="display: inline-block;width: 2.727em;height: 1.363em;background-color: #6db100;font-size: 0.785em;text-align: center;line-height: 1.363em;margin-right: 0.227em;border-radius: 3px;">
                                     自营

                 </span>海南小青柠檬500g限时抢购</span><b class="p-button-up"></b></div>
             <div class="dd J_side_content">
                 <dl class="miniBar clearfix">
                     <a href="javascript:void(0);" collectid="215413" class="ui-link">
                         <dd class="d1"><b></b>收藏</dd>
                     </a>
                     <!--
         <a href="javascript:void(0);"><dd class="d2"><b></b>分享</dd></a>
         -->
                 </dl>
             </div>
         </div>--%>
        <div class="pItems">
            <dl>
                <dt>
                    <span>促销价 :</span>
                    <span class="p">￥${goods.shopPrice}</span>
                    <span class="s">￥${goods.shopPrice1}</span>
                </dt>
                <dd class="clearfix">
                    <div class="even">品牌：焕橙</div>
                    <div class="evening">产地：广西贺州市</div>
                    <br>
                    <div class="evening" val="5742" id="selled_number">销量： ${goods.sellNum}</div>
                </dd>
            </dl>
            <div class="lineBetween"></div>
        </div>

        <form action="#" id="product-cart-info">
            <input type="hidden" name="productId" value="236935">
            <input type="hidden" name="productType" value="0">
            <!--
            <input type="hidden" name="fu" value=""/>
            -->
            <div class="pStock">
                <%--<div class="pAddr clearfix">
                    <div class="dt">送至：</div>
                    <div class="dd">
                        <div class="addrArea" onclick="loadFirstRegion('product-info')">
                            <div class="text">
                                <div title="北京北京东城区" id="product-addr-text">北京北京东城区</div>
                                <b></b>
                            </div>
                        </div>
                    </div>
                    <div class="tip "></div>
                </div>--%>
                <div class="pChoose">
                    <div class="chooseType">
                        <ul>
                        </ul>
                    </div>
                </div>
                <div class="pBuyNum clearfix">
                    <div class="dt">数量：</div>
                    <div class="dd">
                        <a href="javascript:void(0);"  minnum="1" maxnum="200">-</a>
                        <div class="num_input">
                            <input type="text" name="productNum" class=" " value="1" id="p-num">
                        </div>
                        <a href="javascript:void(0);"  minnum="1" maxnum="200">+</a>
                    </div>
                </div>
                <div class="lineBetween"></div>
            </div>
        </form>
    </div>
    <div class="detail_pics_list">
        <a href="http://m.benlai.com/qz/productDetailNew/41216" class="detai_pic_a">
            <font class=" ">图文详情</font></a>
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
