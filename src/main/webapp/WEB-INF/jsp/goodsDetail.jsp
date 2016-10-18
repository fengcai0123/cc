<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
    type="text/javascript">var ctx = '${ctx}', domain_image = '${domain_image}', domain_static = '${domain_static}';</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%--<link rel="stylesheet" href="${domain_static}/WEB-INF/assets/css/jquery.mobile-1.4.5.min.css">
<script src="${domain_static}/WEB-INF/assets/js/jquery-1.4.2.min.js"></script>
<script src="${domain_static}/WEB-INF/assets/js/jquery.mobile-1.4.5.min.js"></script>--%>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

<html>
<head>
    <title>Title</title>
    <style>
        *{text-decoration: none;margin: 0;padding: 0;list-style: none;}
        #hear{width: 100%;height: 44px;line-height: 45px;border-bottom: 1px solid #cccccc;}
        #hear a{font-weight: normal;color: black;}
        #hear li{text-align: center;float: left;height: 45px;}
        #hear li:nth-of-type(1){width: 33%;float: left;}
        #hear li:nth-of-type(2){width: 33%;float: left;}
        #hear li:nth-of-type(3){width: 34%;float: right;}
        #contentop li{ width: 90%; display: none;text-align: center;margin: 0 auto;margin-top: 12px;}
        #contentop .action{ display: block;}
        #contentop .usl{width: 100%;height: 110px;background:wheat;border: 1px solid #cccccc;margin-bottom: 10px;text-shadow: none;}
        #contentop .alo{width: 100%;height: 110px;background: white;border: 1px solid #cccccc;margin-bottom: 10px;text-shadow: none;}
        #contentop span{font-size: 1.3em;color: #47B0D7;}
        #contentop .sty1{margin-top: 18px;}
        #contentop .sty2{margin-top: 13px;}
        #contentop .sty3{margin-top: 13px;}
        #contentop .sty4{text-align: right;font-size: 0.8em;margin-top: -20px;}
        #contentop .Buy{font-size: 0.8em;margin-top: 2px;}
        #contentop .Buy div:nth-of-type(1){text-align: left;padding-left: 15px;}
        #contentop .Buy div:nth-of-type(2){float: right;}
        #contentop .cllio {background:url(img/20010.png)repeat-x;width: 93%;height:8px;margin: 0 auto;margin-top: 5px;}
    </style>
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
            <ul>
                <li><a href="#goods" id="shop" class="ui-btn-active">商品</a> </li>
                <li><a href="#" id="detail">详情</a> </li>
            </ul>
        </div>
    </div>
    <div data-role="content" class="ui-content" id="content_shop" style="display: block;" >
        <div >
        <div   onclick="javaScript:goodsDetail()">
           <img src="${domain_static}/assets/images/products/01/main/01_0.png">
        </div>
        <div>
            <span>${goods.name}</span>
        </div>
        <div>
            <span>${goods.weight}  kg</span>
        </div>
        <div>
            <span>￥${goods.shopPrice}</span>
        </div>
        <div>

        </div>
        </div>
        <div>
            <c:forEach begin="0" end="${goods.detailNumber}" varStatus="item">
                item=${item.index}
                detailNumber=${goodItem.detailNumber}
                <div><img src="${domain_static}/assets/images/products/01/main/01_${item.index}.png"></div>
            </c:forEach>
        </div>
    </div>

    <div id="content_detail"  >
        <div><a href="#" data-role="button" class="ui-btn">商品详情</a> </div>
        <div data-role="main" class="ui-content">
            <c:forEach begin="0" end="${goods.detailNumber}" varStatus="item">
                <div><img src="${domain_static}/assets/images/products/01/main/01_${item.index}.png"></div>
            </c:forEach>
        </div>
    </div>

    <div data-role="footer" data-position="fixed" >
        <div class="ui-grid-b">
            <div class="ui-block-a"><a href="#" data-role="button">客服</a></div>
            <div class="ui-block-b"><a href="#" data-role="button">购物车</a></div>
            <div class="ui-block-c"><a href="#" data-role="button">加入购物车</a></div>
        </div>
    </div>
</div>



</body>
</html>
