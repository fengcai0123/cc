<%@ page contentType="text/html; UTF-8"  language="java" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/WEB-INF/assets/css/jquery.mobile-1.4.5.min.css">
<script src="/WEB-INF/assets/js/jquery-1.4.2.min.js"></script>
<script src="/WEB-INF/assets/js/jquery.mobile-1.4.5.min.js"></script>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <div>
        <C:forEach items="${categoryList}" var="cateItem">
            <div>${cateItem.image}</div>
            <div>${cateItem.name}</div>
        </C:forEach>
    </div>
</body>
</html>
