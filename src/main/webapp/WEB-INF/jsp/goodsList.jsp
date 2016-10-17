<%@ page contentType="text/html; UTF-8"  language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">var ctx = '${ctx}', domain_image = '${domain_image}', domain_static = '${domain_static}';</script>
<html>
<head>
    <title>Title</title>
    <script src="http://code.jquery.com/jquery-1.4.2.min.js"></script>
   <%-- <script src="../assets/js/jquery-1.4.2.min.js"></script>--%>
    <script>
        function del(gid) {
            $.ajax({
                type: "post",
                url: "/goods/del",
                data: "gid="+gid,
                dataType:'json',
                async: false,
                success:function(callbackdata){
                    alert("success");
                },
                error:function (data, status, e){
                    alert("error");
                }
            });
        };
    </script>
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
                <th>操作</th>
            </tr>
            </thead>

            <c:forEach items="${goodsList}" var="goodItem">
                <tbody>
                <tr id="goodItem" >
                    <td id="#del_goods">${goodItem.id}</td>
                    <td >${goodItem.categoryId}</td>
                    <td >${goodItem.sn}</td>
                    <td class="col-lg-2">${goodItem.name}</td>
                    <td >${goodItem.number}</td>
                    <td >${goodItem.weight}</td>
                    <td >${goodItem.marketPrice}</td>
                    <td >${goodItem.shopPrice}</td>
                    <td >${goodItem.detailNumber}</td>
                    <td >${goodItem.mainNumber}</td>
                    <td ><input onclick="del('${goodItem.id}');" type="submit"  name="${goodItem.id}" value="删除"/></td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
    </div>
    <form class="form-inline " role="form" action="/goods/add">
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
        <div><input type="submit" value="添加" ></div>
       <%-- <input type="hidden" name="token" value="${token}">--%><%--防重复提交表单配置--%>
    </form>
</body>
</html>
