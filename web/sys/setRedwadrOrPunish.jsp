<%@ page import="org.xh.AdminTest.myMethod.systemMangerImpl" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/24
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    boolean flag=false;
    String stu_id=request.getParameter("stu_id");
    String type=request.getParameter("type");
    String date=request.getParameter("date");
    String rewardname=request.getParameter("rewardname");
    systemMangerImpl sy=new systemMangerImpl();
    if(stu_id!=null&&date!=null&&rewardname!=null&&type!=null)
       flag=sy.setStuReOrPunish(stu_id,type,rewardname,date);
%>
<html>
<head>
    <title>设置奖惩信息</title>
</head>
<body>
<script language="JavaScript">
    if(<%=flag%>)
        alert("提交成功！")
</script>
<div id="div2.5"> <!--模拟奖励-->
    <section>
        <form action="setRedwadrOrPunish.jsp" method="post">
            请输入学生学号：<input type="text" name="stu_id"><br>
            请输入奖励类型：<input type="text" name="type"><br>
            请输入具体奖励：<input type="text" name="rewardname"><br>
            请输入奖励时间：<input type="text" name="date"><br>
            <input type="submit" value="提交">
        </form>
    </section>
</div>
</body>
</html>
