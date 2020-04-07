<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오전 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] co_all=request.getCookies();    //저장된 쿠키 모두 읽어오기
    for(int i=0;i<co_all.length;i++){
        String c_name=co_all[i].getName();    //쿠키들의 name을 가져옴.
        if(c_name.equals("authUser")){
            out.println("아이디 :"+co_all[i].getValue()+"님 안녕하세요.");   //쿠키 name이 authUser인 쿠키의 Value값을 출력
        }
    }
%>
<p>-------------------------------------------------------------------</p>
<%
    for(int i=0;i<co_all.length;i++){
        out.println((i+1)+"번째 Cookie 정보 :"+co_all[i].getName()+" ");
        out.println(co_all[i].getValue()+" <br>");
    }
%>
<a href="CookieDel.jsp">쿠키 지우기</a>
</body>
</html>
