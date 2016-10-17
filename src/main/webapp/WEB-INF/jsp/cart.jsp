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
<body>
    <div data-role="page" id="goodsdetail">
        <div>cart</div>

        <div data-role="footer"  data-position="fixed">
            <div data-role="navbar">
                <ul>
                    <li><a href="${ctx}/goods/categoryGoodsList" rel="external">首页</a></li>
                    <li><a href="${ctx}/goods/cart" class="ui-btn-active" rel="external">购物车</a></li>
                    <li><a href="#" rel="external">订单</a></li>
                    <li><a href="#" rel="external">搜索</a></li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>
