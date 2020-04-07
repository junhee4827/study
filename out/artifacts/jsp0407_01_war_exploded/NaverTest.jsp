<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오후 1:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] cook_all=request.getCookies();
    for(int i=0;i<cook_all.length;i++){
        out.println(cook_all[i].getName()+"<br>");
    }
%>
</body>
</html>
