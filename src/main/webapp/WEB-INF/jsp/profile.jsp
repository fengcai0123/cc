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
        .wap_top {
            float: left;
            width: 100%;
            height: .44rem;
            background-color: #8baf29;
        }
        .my_picc{
            background: url("../../assets/images/common/myp_bg.jpg") left bottom
            no-repeat;
            height:1.7143rem;
            color:#fff;
            text-align: center;
        }
        .my_picc .myp-t0{
            margin:0.235rem;
            border:1px solid #4cae4c;
            display: inline-block;
        }
        .my_picc .myp-t0 .myp-facebg{
            float: left;
            width:0.557rem;
            height:0.557rem;
            line-height: 0.557rem;
            text-align: center;
            vertical-align: middle;
            overflow: hidden;
        }
        .myp-t0 .myp-facebg img{
            width:0.547rem;
            height:0.547rem;
            line-height: 0.547rem;
        }
        .myp-t0 .myp-title{
            float: left;
            display: inline-block;
            height: 0.547rem;
            line-height: 0.547rem;
        }
        .myp-t0 .myp-title span{
           display: block;
            padding-left: 0.235rem;
            height: 0.547rem;
            line-height: 0.547rem;
            font-size: .1857rem;
            color: #fff;
        }
        .my_tit {
            width: 100%;
        }

        .my_tit li {
            width: 25%;
            text-align: center;
            font: 400 0.12rem/0.18rem "黑体";
            color: #888;
            border-bottom: 1px solid #abd13e;
            padding: 0.035rem 0;
            float: left;
        }
        .my_list{
            width: 100%;
            float:left;
            margin-bottom: .26rem;
        }
        .my_list ul{
            border-bottom: 0.05rem solid #faf8f8;
        }
        .my_list li{
            margin:0 .2rem;
            padding:.1rem 0 .1rem .1rem;
            border-bottom:1px dashed #dcdcdc;
        }
        .my_list li a{
            display: block;
            width: 100%;
            background: url("../../assets/images/common/arrow_r.png")
            right 0.06rem no-repeat #fff;
            font:400 .12rem/0.32rem "黑体";
            color:#888;
        }
        .new-btn{
            width: 100%;
            float:left;
            margin-bottom: .26rem;
            display: block;
            height: 0.32857rem;
            line-height: 0.32857rem;
            text-align: center;
            background: #fa6400;
            border-radius: 5px;
            color: #fff;
            font-size: 0.1614rem;
        }
        .new-btn a.new-btn-0{
            display: block;
            height: 0.32857rem;
            line-height: 0.32857rem;
            text-align: center;
            background: #fa6400;
            border-radius: 5px;
            color: #fff;
            font-size: 0.1614rem;
        }

    </style>
</head>
<body>
<div>
    <div class="wap_top">
        <p class="top_back">
            <a href="history.back()">
                <img src="//image.benlailife.com/static/images/top/top_back_c39a3266.png" width="24" height="41"></a>
        </p>
        <p class="top_tit">个人中心</p>
    </div>
    <div class="my_picc">
        <div class="myp-t0">
            <p class="myp-facebg"><img src="../../assets/images/common/face1.png"></p>
            <p class="myp-title"><span>用户名:xxxx23213651</span></p>
        </div>
    </div>
    <div class="my_tit">
        <ul>
            <a href="https://m.benlai.com/shopping/recharge" target="_self">
                <li>待付款<br><span>0</span>
                </li>
            </a>
            <a href="https://m.benlai.com/member/integral" target="_self">
                <li>待收货<br><span>0</span>
                </li>
            </a>
            <a href="https://m.benlai.com/userHome/coupon" target="_self">
                <li>全部订单<br><span>1</span>
                </li>
            </a>
            <a href="https://m.benlai.com/userHome/giftCard" target="_self">
                <li>我的评价<br><span>0</span>
                </li>
            </a>
        </ul>
    </div>
    <div class="my_list">
        <ul>
            <li>
                <a><img src="../../assets/images/common/my_icon.gif">"账号管理"</a>
            </li>
        </ul>
        <ul>
            <li>
                <a><img src="../../assets/images/common/my_kefu.gif">"客服中心"</a>
            </li>
        </ul>
        <ul>
            <li>
                <a><img src="../../assets/images/common/my_us.gif">"关于我们"</a>
            </li>
        </ul>
    </div>
    <div class="new-btn">
        <a href="#" class="new-btn-0">退出登录</a>
    </div>

    <div class="foot_tab">

        <a href="index">
            <img src="../../assets/images/common/home.png">
            <p>首页</p>
        </a>
        <a href="cart">
            <img src="../../assets/images/common/category.png">
            <p  >购物车</p>
        </a>
        <a href="#" class="on">
            <img src="../../assets/images/common/profile.png">
            <p>我的</p>
        </a>
    </div>
</div>
</body>
</html>
