<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
    type="text/javascript">var ctx = '${ctx}', domain_image = '${domain_image}', domain_static = '${domain_static}';</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%--<link rel="stylesheet" href="${domain_static}/WEB-INF/assets/css/jquery.mobile-1.4.5.min.css">
<script src="${domain_static}/WEB-INF/assets/js/jquery-1.4.2.min.js"></script>
<script src="${domain_static}/WEB-INF/assets/js/jquery.mobile-1.4.5.min.js"></script>--%>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

<html>
<head>
    <title>Title</title>
    <script>
       /* $(function () {
            $("#hear ul").click(function () {
                $(this).css({
                    borderBottom:"2px solid red",
                    height:"43px",
                }).siblings().css({
                    borderBottom:"none",
                    height:"45px"
                });
            });

            $("#hear ul").click(function () {
                $(this).addClass("action").sibling().removeClass("action");
                var index=$(this).index();
                $("#contentop li").eq(index).css("display","block").sibling().css("display","none");
            });
        })*/
    </script>
    <style>

    </style>
</head>
<script>
    function cart() {
        $.mobile.changePage("/goods/cart", {
            type: "post",
            changeHash: false
        });
    }
</script>
<body>

<div data-role="page" id="goods">
    <div data-role="header">
        <div data-role="navbar" data-iconpos="top" id="hear">
           <span>个人中心</span>
        </div>
    </div>
    <div data-role="main" class="ui-content">
        <div >
            <div   onclick="javaScript:goodsDetail()">
               <a href="#" class="ui-btn ui-btn-icon-user ui-btn-icon-left" data-role="button">登录</a>
            </div>
            <div class="ui-grid-c">
               <a class="ui-block-a" data-role="button">全部订单</a>
               <a class="ui-block-b" data-role="button">待付款</a>
               <a class="ui-block-c" data-role="button">待收货</a>
               <a class="ui-block-c" data-role="button">待评价</a>
            </div>
            <div>
                <a href="#" data-role="button"><img src="../assets/images/common/servicer_icon.gif">
                    <span>客服</span>
                </a>
            </div>
            <div>
                <a href="#" data-role="button"><img src="../assets/images/common/servicer_icon.gif">
                    <span>设置</span>
                </a>
            </div>
            <div>

            </div>
        </div>

    </div>



    <div data-role="footer"  data-position="fixed">
        <div data-role="navbar">
            <ul>
                <li><a href="#"  >首页</a></li>
                <li><a href="#" >分类</a></li>
                <li><a href="#"  >购物车</a></li>
                <li><a href="#" class="ui-btn-active" >我的</a></li>
            </ul>
        </div>
    </div>
</div>



</body>
</html>
