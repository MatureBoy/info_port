<%@ page import="org.xh.AdminTest.vo.SystemMessage" %>
<%@ page import="java.util.List" %>
<%@ page import="org.xh.AdminTest.myMethod.studentUserImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username=request.getParameter("username");
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>人工页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
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
    <table class="table-bordered">
        <thead>系统消息</thead>
        <tr>
            <th>日期</th>
            <th>消息</th>
        </tr>
        <%
            studentUserImpl st1=new studentUserImpl();
            List<SystemMessage> sysMess=st1.getSystemMessage();
            for(int i=0;i<sysMess.size();i++){
        %>
        <tr>
            <td><%=sysMess.get(i).getDate()%></td>
            <td><%=sysMess.get(i).getInfo()%></td>
        </tr>
        <%
            }
        %>

    </table>
</div>
<div>
    <a href="stufunction.jsp?username=<%=username%>"> 返回</a>
</div>
</body>

</html>
