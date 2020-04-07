<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-07
  Time: 오전 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--로그인 전 창--%>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        div{margin: 0 auto; padding: 0;}
        #base{
            width: 332px; height: 120px; border: 1px solid black; box-sizing: border-box;
        }
        #base2{
            width: 332px; height: 120px; border: 1px solid black; box-sizing: border-box;
        }
        #base div{
            width: 330px;   height: 90px; border: 1px solid black; box-sizing: border-box;
        }
        #base div p{
            font-size: 12px;    color: #888; padding: 0 0 3px 10px;
        }
        img{
            width: 280px;
            height: 37px;
            color: #888; padding: 0 0 3px 10px;
            background-position: 0 -47px;
            background-repeat: no-repeat;
        }
        a{

        }
        #base :nth-child(4){
            float: right;
        }
    </style>
</head>
<body>
<%!
    String auth_User;
%>
<%
    Object o_auth = session.getAttribute("auth_User");

    if(o_auth==null){
%>
    <div id="base">
        <%--로그인 안되었을때--%>
        <div>
            <p>네이버를 더 안전하고 편리하게 이용하세요.</p>
            <a href="NaverLogin.html"><img id="NaverLogin_icon" src="image/NaverLogin.png" alt="네이버 로그인"> </a>
        </div>
        <a href="#">아이디</a>·
        <a href="#">비밀번호 찾기</a>
        <a href="#">회원가입</a>
    </div>
<%
    }else{
%>
    <div id="base2">
<%--로그인 되었을때--%>
<div>
    <p><%=o_auth.toString()%>님</p>
    <a href="NaverLogin.html"><img id="NaverLogin_icon2" src="../image/NaverLogin.png" alt="네이버 로그인"> </a>
</div>
<a href="NaverLogout.jsp">로그아웃</a>

</div>
<%
}
%>






</body>
</html>
