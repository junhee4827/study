<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오전 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //id,pw를 비교해서 쿠키에 저장
    String id=request.getParameter("id");
    String pw=request.getParameter("pw");
    //db와 연동해서 id,pw를 비교
    if(id.equals("admin") && pw.equals("1234")){
        session.setAttribute("auth_User","goldstar");
        response.sendRedirect("NaverIndex.jsp");
    }else{
        response.sendRedirect("NaverLogin.html");
    }

%>

</body>
</html>
