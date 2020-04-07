<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오전 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //쿠키를 삭제 후 index.jsp로 이동
//    Cookie[] cookies=request.getCookies();
//    for(int i=0;i<cookies.length;i++){
//        String cookie_ch=cookies[i].getName();
//        if(cookie_ch.equals("auth_User")){
//            cookies[i].setMaxAge(0);
//            response.addCookie(cookies[i]);
//            response.sendRedirect("NaverIndex.jsp");
//        }
//    }

    session.removeAttribute("auth_User");
    response.sendRedirect("NaverIndex.jsp");
%>
</body>
</html>
