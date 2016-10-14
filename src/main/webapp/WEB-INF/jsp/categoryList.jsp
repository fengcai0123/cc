<%@ page contentType="text/html; UTF-8"  language="java" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
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
