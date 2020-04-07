<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오후 3:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if(request.isRequestedSessionIdValid()){
        out.println("섹션이 있습니다.");
    }else{
        out.println("섹션이 없습니다.");
    }
%>
</body>
</html>
