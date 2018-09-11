<%@ page import="org.xh.AdminTest.ConnectDatabase.ConnectDatabase" %>
<%@ page import="org.xh.AdminTest.vo.User" %>
<%@ page import="org.xh.AdminTest.myMethod.userCheckImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username=request.getParameter("username");
    String pwd=request.getParameter("userpwd");
    System.out.println("username pwd"+username+"---"+pwd);
    String mark=request.getParameter("mark");
    String identity=null;
    ConnectDatabase cdb=new ConnectDatabase("information_port");
    User user=new User(username,pwd);
    username=null;
    boolean flag=false;
    userCheckImpl check=new userCheckImpl();
    if(check.checkUser(user) &&mark.equals("1")){
        session.setAttribute("username",user.getAccount());
        flag=true;
        System.out.println("66666");
       identity=check.checkIdentity(user);
    }else{
        //response.sendRedirect("login1.html");
    }
    boolean flag1=false;
    boolean flag2=false;
    boolean flag3=false;
    boolean flag4=false;
    boolean flag5=false;
    System.out.println("mark:"+mark);
    System.out.println("identity:"+identity);
    if(identity!=null&&mark.equals("1")){
        switch (identity) {
            case "1":
                flag1 = true;
                break;
            case "2":
                flag2 = true;
                break;
            case "3":
                flag3 = true;
                break;
            case "4":
                flag4 = true;
                break;
            case "0":
                flag5 = true;
                break;
        }
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a id="a1" href="stu_1.jsp"></a>
<a id="a2" href="cou_1.jsp"></a>
<a id="a3" href="tea_1.jsp"></a>
<a id="a4" href="行政老师信息aa.jsp"></a>
<a id="a5" href="../sys/system.jsp"></a>
<Script LANGUAGE = JavaScript>
        if(<%=flag1%>)
        {
            document.getElementById("a1").click();
        }
        if(<%=flag5%>)
        {
            document.getElementById("a5").click();
        }
        if(<%=flag2%>)
        {
            document.getElementById("a2").click();
        }
        if(<%=flag3%>)
        {
            document.getElementById("a3").click();
        }
        if(<%=flag4%>)
        {
            document.getElementById("a4").click();
        }
        if(!<%=flag%>)
        {
            alert("账号或密码错误!");
            window.history.back(-1);
        }
</Script>
</body>
</html>
