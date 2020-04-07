<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오후 3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="SessionForm3.jsp">
<%
    String name=request.getParameter("name");
    String value=request.getParameter("value");
    session.setAttribute(name,value);
%>
    <h2>저장 완료</h2>
    <p>---------------------------</p>
    <%
        Object obj1=session.getAttribute(name);
        String value1=(String)obj1;
        out.println(name+"의 값 : "+value1);
    %>
    <input type="submit" value="세션 보기">
</form>
</body>
</html>
