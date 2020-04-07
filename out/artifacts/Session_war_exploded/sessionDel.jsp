<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오후 3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String auth_User=(String)session.getAttribute("auth_User");
    if(auth_User==null){
        out.println("auth_User 섹션이 없습니다.");
    }else{
        out.println(auth_User+"가 있습니다.");
    }
    session.invalidate();

%>
<a href="session_AllDel.jsp">섹션 지운 후 확인</a>
</body>
</html>
