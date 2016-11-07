<%--
  Created by IntelliJ IDEA.
  User: yonghuo.chen
  Date: 16/10/13
  Time: 上午11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<html>
<head>
    <title>Title</title>
    <script>
        $(document).ready(function () {
            $("#footer_tab li").click(function () {
               $(this).addClass("active").siblings().removeClass("active");
            })
        })
    </script>
</head>
<body>
    adfasfd
        <ul class="nav nav-pills nav-justified" role="tablist" id="footer_tab">
            <li role="presentation" class="active"><a href="#">Home</a></li>
            <li role="presentation"><a href="#">Profile</a></li>
            <li role="presentation"><a href="#">Messages</a></li>
        </ul>

</body>
</html>
