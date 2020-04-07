<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오전 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie cook1=new Cookie("user_id","admin");
    cook1.setMaxAge(1800);  //유효시간(30분)
    response.addCookie(cook1);  //response 객체에 저장해야 함.

    Cookie cook2=new Cookie("nick_name","goldstar");
    cook2.setMaxAge(1800);
    response.addCookie(cook2);

    Cookie cook3=new Cookie("authUser","admin");
    cook3.setMaxAge(1800);
    response.addCookie(cook3);
%>
<a href="CookieGet.jsp">쿠키 전송</a>
</body>
</html>
