<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오전 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] co_all=request.getCookies();   //쿠키 모든 정보 들고 오기
    for(int i=0;i<co_all.length;i++){
        String c_name=co_all[i].getName();
        if(c_name.equals("authUser")){
            co_all[i].setMaxAge(0);
            response.addCookie(co_all[i]);
        }
        if(c_name.equals("nick_name")){
            co_all[i].setMaxAge(0);
            response.addCookie(co_all[i]);
        }
        if(c_name.equals("user_id")){
            co_all[i].setMaxAge(0);
            response.addCookie(co_all[i]);
        }
    }
    //response.sendRedirect("login.html");
%>
<h2>쿠키가 삭제되었습니다.</h2>
<a href="CookieGet.jsp">쿠키 정보 읽기</a>
</body>
</html>
