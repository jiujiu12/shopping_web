<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Bule
  Date: 2019/9/2
  Time: 7:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  %>

<html>
<head>
    <title>跳转成功</title>
</head>
<body>
<button onclick="location.href='${pageContext.request.contextPath}/user/findByUserName'">个人信息</button>
</body>
</html>

