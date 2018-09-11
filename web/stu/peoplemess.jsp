<%@ page import="org.xh.AdminTest.myMethod.studentUserImpl" %>
<%@ page import="org.xh.AdminTest.vo.ArtMess" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username=request.getParameter("username");
%>
<html>
<head>
    <title>人工消息</title>
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
        <thead>人工消息</thead>
        <tr>
            <th>发送方</th>
            <th>内容</th>
            <th>日期</th>
        </tr>
        <%
            studentUserImpl st=new studentUserImpl();
            List<ArtMess> artmess=new ArrayList<ArtMess>();
            artmess=st.getMyArtMessInfo(username);
            for(int i=0;i<artmess.size();i++){
        %>
        <tr>
            <td><%=artmess.get(i).getMess_sender()%></td>
            <td><%=artmess.get(i).getMessage()%></td>
            <td><%=artmess.get(i).getDate()%></td>
        </tr>
        <%
            }
        %>
        <tr>
            <td>&nbsp;&nbsp;</td>
            <td>&nbsp;&nbsp;</td>
        </tr>
    </table>
</div>
<div>
    <a href="stufunction.jsp?username=<%=username%>"> 返回</a>
</div>
</body>
</html>
