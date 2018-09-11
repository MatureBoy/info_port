<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/24
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username=request.getParameter("username");
    session.setAttribute("username",username);
%>
<html>
<head>
    <title>管理员页面</title>
</head>
<style>
    span{
        text-align: center;
        border-top:0px;
        display: block;
    }
    a{
        font-size: 25px;
        font-family: "楷体",serif;
    }
</style>
<body>
<div>
    <span>
        <a href="accountInfo.jsp" target="myframe">查看账号信息</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="setRedwadrOrPunish.jsp"target="myframe">设置学生奖惩信息</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="setMoney.jsp"target="myframe">设置学生各种学金</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="releaseMess.jsp"target="myframe">发布系统消息</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="getMess.jsp"target="myframe">查看学生反馈</a>
        <a href=""
    </span>
    <iframe name="myframe" scrolling="auto" border="1" src="accountInfo.jsp" width="100%" height="870px"></iframe>
</div>
</body>
</html>
