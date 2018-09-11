<%@ page import="org.xh.AdminTest.myMethod.systemMangerImpl" %>
<%@ page import="org.xh.AdminTest.vo.ArtMess" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/24
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="div3.1"> <!--查看学生反馈信息-->
    <table class="table-danger">
        <tr>
            <th>学号</th>
            <th>反馈内容</th>
            <th>日期</th>
        </tr>
        <%
            systemMangerImpl st=new systemMangerImpl();
            List<ArtMess> sysMess=new ArrayList<ArtMess>();
            sysMess=st.getStuMessToAdmin();
            for(int i=0;i<sysMess.size();i++){
        %>
        <tr>
            <td><%=sysMess.get(i).getMess_sender()%></td>
            <td><%=sysMess.get(i).getMessage()%></td>
            <td><%=sysMess.get(i).getDate()%></td>
            <td><a href="releaseMess.jsp?stu_id=<%=sysMess.get(i).getMess_sender()%>&flag3=true">回复</a> </td>
        </tr>
        <%
            }
        %>
    </table>
</div>
</body>
</html>
