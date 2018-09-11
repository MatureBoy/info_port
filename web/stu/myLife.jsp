<%@ page import="org.xh.AdminTest.vo.Consumption" %>
<%@ page import="java.util.List" %>
<%@ page import="org.xh.AdminTest.myMethod.studentUserImpl" %>
<%@ page import="org.xh.AdminTest.vo.MonthPay" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/22
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username=request.getParameter("username");
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的生活</title>
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
<div id="div4.1">
    <table class="table-bordered">
        <thead>一卡通消费记录</thead>
        <tr>
            <th>消费记录</th>
            <th>日期</th>
        </tr>
        <%
            studentUserImpl st1=new studentUserImpl();
            List<Consumption> sysMess=st1.getMyConsumptionInfo(username);
            for(int i=0;i<sysMess.size();i++){
        %>
        <tr>
            <td><%=sysMess.get(i).getConsumptionMoney()%></td>
            <td><%=sysMess.get(i).getDate()%></td>
        </tr>
        <%
            }
        %>

    </table>
</div>
<br>
<div id="div4.2">
    <table class="table-bordered">
        <thead>寝室用电</thead>
        <tr>
            <th>月份</th>
            <th>消费记录</th>
        </tr>
        <%
            List<MonthPay> monthPay=st1.getMyMonthPayInfo(username);
            for(int i=0;i<monthPay.size();i++){
        %>
        <tr>
            <td><%=monthPay.get(i).getMonth()%></td>
            <td><%=monthPay.get(i).getElectric_fee()%></td>
        </tr>
        <%
            }
        %>
    </table>
</div>
<br>
<div id="div4.3">
    <table class="table-bordered">
    <thead>网费</thead>
    <tr>
        <th>月份</th>
        <th>网费</th>
    </tr>
    <%
        for(int i=0;i<monthPay.size();i++){
    %>
    <tr>
        <td><%=monthPay.get(i).getMonth()%></td>
        <td><%=monthPay.get(i).getNetwork_fee()%></td>
    </tr>
    <%
        }
    %>
</table>
</div>
<br>
<div id="div4.4">
    <table class="table-bordered">
        <thead>水费</thead>
        <tr>
            <th>月份</th>
            <th>水费</th>
        </tr>
        <%
            for(int i=0;i<monthPay.size();i++){
        %>
        <tr>
            <td><%=monthPay.get(i).getMonth()%></td>
            <td><%=monthPay.get(i).getWater_fee()%></td>
        </tr>
        <%
            }
        %>
    </table>
</div>

<div id="div4.5">
    <a href="stufunction.jsp?username=<%=username%>">返回</a>
</div>
</body>
</html>
