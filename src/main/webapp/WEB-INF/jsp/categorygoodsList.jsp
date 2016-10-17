<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
    type="text/javascript">var ctx = '${ctx}', domain_image = '${domain_image}', domain_static = '${domain_static}';</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="http://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

<html>
<head>
    <title>Title</title>
    <%-- <script src="../assets/js/jquery-1.4.2.min.js"></script>--%>
    <script>
        function del(gid) {
            $.ajax({
                type: "post",
                url: "/goods/del",
                data: "gid=" + gid,
                dataType: 'json',
                async: false,
                success: function (callbackdata) {
                    alert("success");
                },
                error: function (data, status, e) {
                    alert("error");
                }
            });
        }
        ;
    </script>
</head>
<body>
<script>
    function goodsDetail() {
        $.mobile.changePage( "/goods/detail", {
            type: "post",
            changeHash: false
        });
    }

</script>
    <div data-rol="page" id="pageone">
        <div data-role="main" class="ui-content">
            <h2>分类</h2>
            <c:forEach items="${goodsList}" var="goodItem">
                <ul data-role="listview" data-autodividers="true" data-inset="true" onclick="javaScript:goodsDetail()">
                    <li><a href="#">
                        <img src="/assets/images/products/01/main/01_0.png">
                        <h3>${goodItem.name}</h3>
                        <h2>${goodItem.weight} kg</h2>
                        <h2>¥${goodItem.shopPrice}</h2>
                    </a>
                    </li>
                </ul>

            </c:forEach>
        </div>

        <div data-role="footer"  data-position="fixed">
            <div data-role="navbar">
                <ul>
                    <li><a href="${ctx}/goods/categoryGoodsList" class="ui-btn-active" rel="external">首页</a></li>
                    <li><a href="${ctx}/goods/cart" rel="external">购物车</a></li>
                    <li><a href="#" rel="external">订单</a></li>
                    <li><a href="#" rel="external">搜索</a></li>
                </ul>
            </div>
        </div>
    </div>

</body>
</html>
