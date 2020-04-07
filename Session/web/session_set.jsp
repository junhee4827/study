<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오후 2:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.setAttribute("auth_User","admin");
    session.setAttribute("naver_id","admin");
    session.setAttribute("pw",1234);
    session.setAttribute("nick_name","goldstar");

%>
<a href="session_get.jsp">섹션 보기</a>
</body>
</html>
