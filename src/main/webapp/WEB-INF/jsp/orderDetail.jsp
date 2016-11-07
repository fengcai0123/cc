<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script
    type="text/javascript">var ctx = '${ctx}', domain_image = '${domain_image}', domain_static = '${domain_static}';</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/assets/css/jquery.mobile-1.4.5.min.css">
<script src="/assets/js/jquery-1.11.1.min.js"></script>
<script src="/assets/js/jquery.mobile-1.4.5.min.js"></script>
<%--<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>--%>

<html>
<head>
    <title>Title</title>
<style>
    .ui-grid-b .ui-block-a
    {
       width:30%;
    }
    .ui-grid-b .ui-block-b
    {
        width:65%;
    }
    .ui-grid-b .ui-block-c
    {
        width:5%;
    }
</style>
</head>
<script>
    function cart() {
        $.mobile.changePage("/goods/cart", {
            type: "post",
            changeHash: false
        });
    }
    function orderGoodsList() {
        $.ajax({
            type: "post",
            url: "/user/allOrder",
            dataType: 'json',
            async: false,
            success: function (data) {
                $("#EmrGallery").append('<c:forEach items="${orderGoodsList}" var="orderItem"><li>${orderItem.goodsName}</li></c:forEach>'
                $('#orderGoodsList').listview('refresh');
            },
        });
    }
    function orderWaitPayList() {
        $.ajax({
            type: "post",
            url: "/user/waitPay",
            dataType: 'json',
            async: false,
            success: function (data) {
                alert(data)
                $("#EmrGallery").append('<c:forEach items="${orderGoodsList}" var="orderItem"><li>${orderItem.goodsName}</li></c:forEach>'
                $('#orderGoodsList ').listview('refresh');
            },
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
    <div data-role="content" class="ui-content">
        <div>
            <div onclick="javaScript:goodsDetail()">
                <a href="#" class="ui-btn ui-btn-icon-user ui-btn-icon-left" data-role="button">登录</a>
            </div>
            <div data-role="navbar">
                <ul>
                    <li>
                        <a href="#" onclick="orderGoodsList()">全部订单</a>
                        <%-- <ul data-role="listView" id="orderGoodsList">
                             <c:forEach items="${orderGoodsList}" var="orderItem">
                             <li>${orderItem.goodsName}</li>
                             <li>${orderItem.id}</li>
                             </c:forEach>
                         </ul>--%>
                    </li>
                    <li>
                        <a href="#weiPayPage">待付款</a>
                    </li>
                    <li>
                        <a href="#waitReceivePage">待收货</a>
                    </li>
                </ul>
            </div>
            <div data-role="content">
                <ul data-role="listview" id="orderGoodsList" data-inset="true">
                    <c:forEach items="${orderGoodsList}" var="orderItem">
                        <li>${orderItem.goodsName}</li>
                        <li>${orderItem.id}</li>
                    </c:forEach>
                </ul>
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


    <div data-role="footer" data-position="fixed">
        <div data-role="navbar">
            <ul>
                <li><a href="#">首页</a></li>
                <li><a href="#">分类</a></li>
                <li><a href="#">购物车</a></li>
                <li><a href="#" class="ui-btn-active">我的</a></li>
            </ul>
        </div>
    </div>
</div>

<div data-role="page" id="weiPayPage">
    <div data-role="header">
        <a href="#" data-rel="back" class="ui-btn ui-icon-arrow-l ui-btn-icon-left" data-role="button">返回</a>
        <h2>待支付</h2>
        <a href="#" data-role="button">搜索</a>
    </div>
    <div data-role="content" class="ui-content">
        <div>
            <c:forEach items="${orderGoodsList}" var="orderItem">
                <div class="ui-grid-a">
                    <span class="ui-block-a">订单编号:${orderItem.orderId}</span>
                    <span class="ui-block-b">待支付</span>
                </div>
                <div>
                    <ul data-role="listview">
                            <%-- <c:forEach items="${orderItem.OrderGoods}" var="goodItem">
                                 <li>${goodItem.goodsName}</li>
                             </c:forEach>--%>
                        <li>
                            <a href="#" class="ui-grid-b">

                                <img src="http://img2.imgtn.bdimg.com/it/u=2830336329,2856413829&fm=21&gp=0.jpg" class="ui-block-a">
                                <div class="ui-block-b">
                                <h2>${orderItem.goodsName}</h2>
                                <h2>${orderItem.goodsPrice}</h2>
                                    <h2>${orderItem.goodsNumber}</h2>
                                </div>
                                <div class="ui-block-c">
                                <h2>${orderItem.goodsNumber}</h2>
                                </div>
                            </a>
                        </li>
                    </ul>

                </div>
            </c:forEach>
        </div>
    </div>
</div>

<div data-role="page" id="waitReceivePage">
    <div data-role="header">
        <a href="#" data-rel="back" class="ui-btn ui-icon-arrow-l ui-btn-icon-left" data-role="button">返回</a>
        <h2>待支付</h2>
        <a href="#" data-role="button">搜索</a>
    </div>
    <div data-role="content" class="ui-content">
        <div>
            <c:forEach items="${orderGoodsList}" var="orderItem">
                <div class="ui-grid-a">
                    <span class="ui-block-a">订单编号:${orderItem.orderId}</span>
                    <span class="ui-block-b">待收货</span>
                </div>
                <div>
                    <ul data-role="listview">
                            <%-- <c:forEach items="${orderItem.OrderGoods}" var="goodItem">
                                 <li>${goodItem.goodsName}</li>
                             </c:forEach>--%>
                        <li>
                            <a href="/">
                                <img src="http://img2.imgtn.bdimg.com/it/u=2830336329,2856413829&fm=21&gp=0.jpg">
                                <h2>${orderItem.goodsName}</h2>
                                <h2>${orderItem.goodsPrice}</h2>
                                <h2>${orderItem.goodsNumber}</h2>
                            </a>
                        </li>
                    </ul>

                </div>
            </c:forEach>
        </div>
    </div>
</div>

</body>
</html>
