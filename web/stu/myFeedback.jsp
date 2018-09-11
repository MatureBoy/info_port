<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/22
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username=(String)session.getAttribute("username");
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的反馈</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
<div id="zhuyedaohangtiao">
    <ul>
        <li><a href="#">主页</a></li>
        <li><a href="#">学校新闻</a></li>
        <li><a href="#">请联系我们</a></li>
    </ul>
</div>
<div>
    <label for="demo">输入您的意见</label>
    <script language="JavaScript">
            function  tips(){
                alert("信息发送成功");
            }
    </script>
    <div class="input-group mb-3" style="width:100%">
        <form action="sumbitMyfeedback.jsp" method="post">
            <textarea  name="message1"class="form-control"></textarea>


        <div class="input-group-append">
            <input type="submit" value="提交" onclick=tips()>
        </div>


    </form>
    </div>
</div>
<div> <a href="stufunction.jsp"> 返回</a></div>
</body>
</html>
