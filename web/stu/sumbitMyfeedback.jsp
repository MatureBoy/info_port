<%@ page import="org.xh.AdminTest.myMethod.studentUserImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String textinfo=request.getParameter("message1");
    String username=(String)session.getAttribute("username");
    studentUserImpl st=new studentUserImpl();
    st.setMessToAdmin(textinfo,username);
    response.sendRedirect("stufunction.jsp");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
