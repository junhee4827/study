<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오후 3:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name=(String)session.getAttribute("name");
    if(name==null){
        out.println("세션이 없습니다.");
    }else{
        out.println("세션이 있습니다.");
    }

%>
</body>
</html>
