<%@ page contentType="text/html; UTF-8"  language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div>
        <div class="table-responsive center-block">
            <table class="table " >
                <thead>
                <tr>
                <th >产品Id</th>
                <th >分类Id</th>
                <th >产品编号</th>
                <th >产品名称</th>
                <th >库存</th>
                <th >重量</th>
                <th >市场价</th>
                <th >商城价</th>
                <th >详情图数量</th>
                <th >主图数量</th>
                </tr>
                </thead>

            <c:forEach items="${goodsList}" var="goodItem">
                <tbody>
            <tr>
                <th >${goodItem.id}</th>
                <th >${goodItem.categoryId}</th>
                <th >${goodItem.sn}</th>
                <th class="col-lg-2">${goodItem.name}</th>
                <th >${goodItem.number}</th>
                <th >${goodItem.weight}</th>
                <th >${goodItem.marketPrice}</th>
                <th >${goodItem.shopPrice}</th>
                <th >${goodItem.detailNumber}</th>
                <th >${goodItem.mainNumber}</th>
            </tr>
                </tbody>
            </c:forEach>
            </table>
        </div>
        <div>
        <div class="form-inline " role="form" action="/goods/add">
            <div class="row center-block">
                <input type="text" class="col-lg-2" name="categoryId">

                <input type="text" class="col-lg-3" name="name">
                <input type="text"class="col-lg-1" name="number">
                <input type="text" class="col-lg-1" name="weight">

                <input type="text" class="col-lg-1" name="marketPrice">
                <input type="text" class="col-lg-1" name="shopPrice">
                <input type="text" class="col-lg-1" name="detailNumber">

                <input type="text" class="col-lg-1" name="mainNumber">

            </div>
            <div><input type="submit" value="添加" class="text-right"></div>
        </div>
        </div>
    </div>
</body>
</html>
