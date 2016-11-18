<%@ page contentType="text/html; UTF-8"  language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="http://code.jquery.com/jquery-1.3.2.min.js"></script>
    <script>
        function del(${goodItem.id}) {
            $.ajax({
                type: "post",
                url: "del",
                /*data: "gid="+$("#del_goods").val(),*/
                data: "gid="+${goodItem.id},
                dataType:'json',
                async: false,
                error: function (request) {
                    alert("页面ajax请求错误");
                },
                success: function (data) {
                    alert("ajax成功")
                }
            });
        };

        $(document).ready(function () {

        })
    </script>
    <style>
        .goods-list-div{
            width: 980px;
            max-width: 980px;
            min-width: 768px;
        }
        .goods-list{
            border: 1px solid #6e6e6e;
            width: 980px;
            max-width: 980px;
            min-width: 768px;
        }

        .goods-list thead{
            width: 100%;
        }

        .goods-list tbody{
            width: 100%;
        }
        .goods-list td{
            border: 1px solid #6e6e6e;
            text-align: left;
        }
    </style>
</head>
<body>

<div>
    <div class="goods-list-div">
        <table class="goods-list">
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
                <tr >
                    <td id="#del_goods">${goodItem.id}</td>
                    <td >${goodItem.categoryId}</td>
                    <td >${goodItem.sn}</td>
                    <td  >${goodItem.name}</td>
                    <td >${goodItem.number}</td>
                    <td >${goodItem.weight}</td>
                    <td >${goodItem.marketPrice}</td>
                    <td >${goodItem.shopPrice}</td>
                    <td >${goodItem.detailNumber}</td>
                    <td >${goodItem.mainNumber}</td>
                    <td ><input onclick="del(${goodItem.id});" type="submit"  name="" value="删除"/></td>
                </tr>
            </c:forEach>
            <tr>
                <form class="form-inline " role="form" action="/goods/add">
                    <td ><input type="text"  name="goodsId"></td>
                    <td ><input type="text"  name="categoryId"></td>
                    <td ><input type="text"  name="sn"></td>
                    <td ><input type="text"  name="name"></td>
                    <td ><input type="text" name="number"></td>
                    <td ><input type="text"  name="weight"></td>

                    <td > <input type="text"  name="marketPrice"></td>
                    <td ><input type="text"  name="shopPrice"></td>
                    <td ><input type="text"  name="detailNumber"></td>

                    <td ><input type="text"  name="mainNumber"></td>
                    <td ><input type="submit" id="add-goods"  name="添加">

                        <input type="hidden" name="token" value="${token}" /></td>
                    <%-- <input type="hidden" name="token" value="${token}">--%><%--防重复提交表单配置--%>
                </form>
            </tr>
                </tbody>
        </table>
    </div>

  <%--  <form class="form-inline " role="form" action="/goods/add">
        <div class="row center-block">
            <input type="text" class="col-sm-1" name="categoryId">

            <input type="text" class="col-sm-1" name="name">
            <input type="text"class="col-sm-1" name="number">
            <input type="text" class="col-sm-1" name="weight">

            <input type="text" class="col-sm-1" name="marketPrice">
            <input type="text" class="col-sm-1" name="shopPrice">
            <input type="text" class="col-sm-1" name="detailNumber">

            <input type="text" class="col-sm-1" name="mainNumber">

        </div>
        <div><input type="submit" value="添加" ></div>
       &lt;%&ndash; <input type="hidden" name="token" value="${token}">&ndash;%&gt;&lt;%&ndash;防重复提交表单配置&ndash;%&gt;
    </form>--%>
</body>
</html>
