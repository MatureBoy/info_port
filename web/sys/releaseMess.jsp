<%@ page import="org.xh.AdminTest.myMethod.systemMangerImpl" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/24
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String username=(String)session.getAttribute("username");
    systemMangerImpl st=new systemMangerImpl();
    String sysmess=request.getParameter("sysmess");
    String stumess=request.getParameter("stumess");
    String stu_id=request.getParameter("stu_id");
    boolean flag1=false,flag2=false,flag3=false;
    if(stu_id!=null&&stumess!=null)
        flag1=st.setArtMess(stu_id,stumess,username);
    if(sysmess!=null)
        flag2=st.releaseMessage(sysmess);
    System.out.println(flag1);
%>
<html>
<head>
    <title>发布系统消息</title>
</head>
<body>
<script language="JavaScript">
     if(<%=flag3%>){
            document.form1.stu_id.value = <%=stu_id%>;
    }
    if(<%=flag1%>)
    {alert("已成功发送给<%=stu_id%>");}

    if(<%=flag2%>)
        alert("系统消息发布成功！");
</script>
<div id="div4.1">
    <form action="releaseMess.jsp" method="post">
        <textarea id="t1" name="sysmess"style="height:100px; width:300px;"></textarea>
        <input type="submit" value="发送">
    </form>
    <form action="releaseMess.jsp" method="post" name="form1">
        <h5>请输入想要发送通知的学生学号:</h5>
        学号:<input type="text" name="stu_id" value=<%=stu_id%>> <br>
        <textarea id="t2" name="stumess" style="height:100px; width:300px;"></textarea>
        <input type="submit" value="发送">
    </form>
</div>
</body>
</html>
