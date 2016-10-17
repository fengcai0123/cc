<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
    type="text/javascript">var ctx = '${ctx}', domain_image = '${domain_image}', domain_static = '${domain_static}';</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/WEB-INF/assets/css/jquery.mobile-1.4.5.min.css">
<script src="/WEB-INF/assets/js/jquery-1.4.2.min.js"></script>
<script src="/WEB-INF/assets/js/jquery.mobile-1.4.5.min.js"></script>
<html>
<head>
    <title>Title</title>
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
<div data-role="page" id="goodsdetail">
    <div data-role="header">
        <div data-role="navbar" data-iconpos="top">
            <ul>
                <li><a href="#" class="ui-btn-active">商品</a> </li>
                <li><a href="#">详情</a> </li>
                <li><a href="#">评论</a> </li>
            </ul>
        </div>
    </div>
    <div data-role="content">
        <ul data-role="listview" data-autodividers="true" data-inset="true" onclick="javaScript:goodsDetail()">
            <li><a href="#">
                <img src="/assets/images/products/01/main/01_0.png">
                <h3>${goodItem.name}</h3>
                <h2>${goodItem.weight} kg</h2>
                <h2>¥${goodItem.shopPrice}</h2>
                <button onclick="cart()" data-role="button">加入购物车</button>
            </a>
            </li>
        </ul>
    </div>
    <div data-role="footer" data-position="fixed">
        <div data-role="controlgroup" data-type="vertical" >
            <a href="#" rel="external" data-role="button">客服</a>
            <a href="${ctx}/goods/cart" data-role="button">购物车</a>
            <a href="#" rel="external" data-role="button">加入购物车</a>
        </div>
    </div>
</div>
</body>
</html>
