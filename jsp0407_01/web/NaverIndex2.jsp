<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오전 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--로그인 후 창--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    String naver_user;
%>
<%
    //user가 naver_index2.jsp로 바로 접근해도 페이지가 열리지 않도록 함.
    Cookie[] cookies =request.getCookies();
    for(int i=0;i<co_all.length;i++){
        String c_check=cookies[i].getName();
        if(c_check.equals("naver_User")){
            String naver_user=cookies[i].getValue();
        }else{
            response.sendRedirect("NaverLogin.html");
        }
    }
%>
<div>
    <div>
        <span><%=naver_user+"님"%></span>
    </div>
    <button type="button"><a href="NaverLogout.jsp">로그아웃</a></button>
</div>
</body>
</html>
