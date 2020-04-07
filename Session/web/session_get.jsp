<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오후 2:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Object obj1=session.getAttribute("auth_User");      //getAttribute: 데이터를 얻어옵니다.
    String auth_User = (String)obj1;
    out.println("session 값 : "+auth_User+"<br>");

    Object obj2=session.getAttribute("naver_id");
    String naver_id=(String)obj2;
    out.println("session 값 : "+naver_id+"<br>");

    Object obj3=session.getAttribute("pw");
    int pw=(int)obj3;       //객체여야 하므로 int 가 아닌, integer로 해야함.
    out.println("session 값 : "+pw+"<br>");

    Object obj4=session.getAttribute("nick_name");
    String nick_name=(String)obj4;
    out.println("session 값 : "+nick_name+"<br>");

    out.println("-------------------------------<br>");
    String session_n;
    String session_v;

    Enumeration enum1 = session.getAttributeNames();        //session에 있는 name을 가져와서
    while(enum1.hasMoreElements()){                         //name이 있을 경우
        session_n=enum1.nextElement().toString();           //name을 String으로 변환해서 session_n으로 받아온다.
        session_v=session.getAttribute(session_n).toString();
        out.println("섹션 : 이름 - "+session_n+" ");
        out.println("value -"+session_v+"<br>");
    }
    out.println("-------------------------------<br>");
    String sessionId=session.getId();
    out.println("섹션 고유번호"+sessionId);
    out.println("-------------------------------<br>");

    int inter = session.getMaxInactiveInterval();
    out.println("섹션 유효시간 :"+inter);

    out.println("-------------------------------<br>");
    //session.removeAttribute("auth_User");
    out.println(session.getAttribute("auth_User"));

%>
<a href="sessionDel.jsp">섹션 지우기</a>
</body>
</html>
