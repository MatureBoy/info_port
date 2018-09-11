<%@ page import="org.xh.AdminTest.myMethod.systemMangerImpl" %>
<%@ page import="org.xh.AdminTest.vo.Account" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String accountId=request.getParameter("accountId");
    boolean flag=false;
    systemMangerImpl sy1=new systemMangerImpl();
    if(accountId!=null)
    {
        sy1.deleteAccount(accountId);
        flag=true;
    }
%>
<html>
<head>
    <title>账号信息</title>
</head>
<body>
<script language="JavaScript">
    if(<%=flag%>){
        alert("删除成功！");
    }
</script>
<div id="div1.1">
    <table class="table-bordered">
        <tr>
            <th>账号</th>
            <th>密码</th>
            <th>权限</th>
        </tr>
        <%
            systemMangerImpl sy=new systemMangerImpl();
            List<Account> accountInfo=sy.getAllAccountInfo();
            for(int i=0;i<accountInfo.size();i++){
        %>

        <tr>
            <td><%=accountInfo.get(i).getAccount()%></td>
            <td><%=accountInfo.get(i).getPwd()%></td>
            <td><%=accountInfo.get(i).getIdentity()%></td>
            <td><a href="accountInfo.jsp?accountId=<%=accountInfo.get(i).getAccount()%>">删除</a></td>
        </tr>
        <%
            }
        %>
    </table>
</div>
</body>
</html>
