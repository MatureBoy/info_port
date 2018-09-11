<%@ page import="org.xh.AdminTest.myMethod.systemMangerImpl" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/24
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    boolean flag=false;
    String stu_id=request.getParameter("stu_id");
    String type=request.getParameter("type");;
    String num=request.getParameter("num");
    systemMangerImpl sy=new systemMangerImpl();
    if(stu_id!=null&&type!=null&&num!=null)
        flag=sy.setStuedentMoney(stu_id,type,num);
%>
<html>
<head>
    <title>学金设置</title>
</head>
<body>
<script language="JavaScript">
    if(<%=flag%>)
        alert("提交成功！")
</script>
<div id="div2.4"> <!--模拟助学金-->
    <section>
        <form action="setMoney.jsp" method="post">
            请输入学生学号：<br><input type="text" name="stu_id"><br>
            请输入学金种类,如 (奖学金、助学金、学生贷款)：<br><input type="text" name="type"><br>
            请输入学金金额：<br><input type="text"name="num"><br>
            <input type="submit" value="提交">
        </form>
    </section>
</div>
</body>
</html>
