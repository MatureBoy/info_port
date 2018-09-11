<%@ page import="org.xh.AdminTest.myMethod.studentUserImpl" %>
<%@ page import="org.xh.AdminTest.vo.Course" %>
<%@ page import="java.util.List" %>
<%@ page import="org.xh.AdminTest.vo.MonthPay" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="org.xh.AdminTest.vo.Library" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/22
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username= (String) session.getAttribute("username");

    String semester = request.getParameter("semester");
    String choose=request.getParameter("choose");
    if(choose==null)
        choose="选择学期";
    if (semester==null){
        semester="1";
    }
    studentUserImpl st=new studentUserImpl();
    String stu_name=st.getStuName(username);
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>学生功能</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/style.css" type="text/css">
    <form action="myserlet" method="post">
        <input type="hidden" name="mothed" value="add">

    </form>
    <form action="UserServlet">
        <input type="hidden" name="mothed" value="reduce">

    </form>
    <form action="UserServlet">

    </form>

<body>
<div id="zhuyedaohangtiao">
    <ul>
        <li><a href="#">主页</a></li>
        <li><a href="#">学校新闻</a></li>
        <li><a href="#">请联系我们</a></li>
        <h4>欢迎您,<%=stu_name%></h4>
        <li><a href="../login.html">退出登录</a></li>
    </ul>
</div>
<div id="div1.1">
    <ul>
        <li>功能</li>
        <li> <a href="myInfo.jsp?username=<%=username%>"> 我的信息</a></li>
        <li> <a href="myStudy.jsp?username=<%=username%>"> 我的学习</a></li>
        <li> <a href="myLife.jsp?username=<%=username%>"> 我的生活</a></li>
    </ul>
</div>
<div id="div1.2">
    <div id="div1.3">
        <h2>重要事项</h2>
        <h3>当月消费信息</h3>
        <%
            studentUserImpl st1=new studentUserImpl();
            List<MonthPay> monthPay=st1.getMyMonthPayInfo(username);
            Calendar now = Calendar.getInstance();
            int month= now.get(Calendar.MONTH) + 1;
            MonthPay thisMonthPay=st1.getMyMonthPayByMonth(monthPay,month);
        %>
        <table class="table-bordered">
            <h4>当前月为<%=month%>月</h4>
            <tr>
                <td>网费</td>
                <td><%=thisMonthPay.getNetwork_fee()%></td>

            </tr>
            <tr>
                <td>水费</td>
                <td><%=thisMonthPay.getWater_fee()%></td>
            </tr>
            <tr>
                <td>电费</td>
                <td><%=thisMonthPay.getElectric_fee()%></td>
            </tr>
            <tr>
                <td>一卡通余额</td>
                <%
                    float leftMoney=st.getMycardLeftMoney(username);
                %>
                <td><%=leftMoney%></td>
            </tr>
            <br>
            <tr>
                <td><h4>借阅图书信息</h4></td>
            </tr>
            <tr>
                <th>书名</th>
                <th>借阅日期</th>
                <th>归还日期</th>
            </tr>
            <%
                List<Library> myBorrowBookInfo=st.getMyBookInfo(username);
                for(int i=0;i<myBorrowBookInfo.size();i++){
            %>
            <td><%=myBorrowBookInfo.get(i).getBookName()%></td>
            <td><%=myBorrowBookInfo.get(i).getBorrowDate()%></td>
            <td><%=myBorrowBookInfo.get(i).getReturnDate()%></td>
            </tr>
            <%
                }
            %>
        </table>
    </div>
</div>
<div id ="div1.4">
    <div class="dropdown div-inline" id="div1.5" >
        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
            <%=choose%>
        </button>
        <div class="dropdown-menu dropdown-menu-right" id="div1.6">
            <%
                String chinese="一二三四五六七八";
                for(int i=0;i<8;i++){
            %>
            <a class="dropdown-item" href="stufunction.jsp?semester=<%=i+1%>&choose=第<%=chinese.charAt(i)%>学期">第<%=chinese.charAt(i)%>学期</a>
            <%
                }

            %>
        </div>
        <!--  <div>
                <select>
                    <option> 选项1</option>
                    <option> 选项2</option>
                    <option> 选项3</option>
                </select>
            </div>
        -->
    </div>
</div>
<div class="div-inline" id="div1.7">
    <button type="submit" value="submit"> 提交</button>

</div>
<div id="div1.8">
    <table class="table-bordered">
        <tr>
            <th>&nbsp;&nbsp;</th>
            <th>星期一</th>
            <th>星期二</th>
            <th>星期三</th>
            <th>星期四</th>
            <th>星期五</th>
            <th>星期六</th>
            <th>星期七</th>
        </tr>
        <tr>
            <th>1</th>
            <%
                List<Course> course1=st.getMylocationAndSemesterCourse(username,1,semester);
                int courseWeek;
                boolean flag;
                for(int i=1;i<8;i++){
                    flag=false;
                    for(int j=0;j<course1.size();j++){
                        courseWeek = Integer.parseInt(course1.get(j).getCourseWeek());
                        if(courseWeek==i){
            %>
            <th><%=course1.get(j).getCourseName()%> <br> <%=course1.get(j).getCoursePlace()%></th>
            <%
                        flag=true;
                        break; }
                }
                if (!flag){%>
            <th>&nbsp;&nbsp;</th>
            <%
                    }
                }
            %>
        </tr>
        <tr>
            <th>2</th>
            <%
                List<Course> course2=st.getMylocationAndSemesterCourse(username,2,semester);
                for(int i=1;i<8;i++){
                    flag=false;
                    for(int j=0;j<course2.size();j++){
                        courseWeek = Integer.parseInt(course2.get(j).getCourseWeek());
                        if(courseWeek==i){
            %>
            <th><%=course2.get(j).getCourseName()%> <br> <%=course2.get(j).getCoursePlace()%></th>
            <%
                        flag=true;
                        break; }
                }
                if (!flag){%>
            <th>&nbsp;&nbsp;</th>
            <%
                    }
                }
            %>
        </tr>
        <tr>
            <th>3</th>
            <%
                List<Course> course3=st.getMylocationAndSemesterCourse(username,3,semester);
                for(int i=1;i<8;i++){
                    flag=false;
                    for(int j=0;j<course3.size();j++){
                        courseWeek = Integer.parseInt(course3.get(j).getCourseWeek());
                        if(courseWeek==i){
            %>
            <th><%=course3.get(j).getCourseName()%> <br> <%=course3.get(j).getCoursePlace()%></th>
            <%
                        flag=true;
                        break; }
                }
                if (!flag){%>
            <th>&nbsp;&nbsp;</th>
            <%
                    }
                }
            %>
        </tr>
        <tr>
            <th>4</th>
            <%
                List<Course> course4=st.getMylocationAndSemesterCourse(username,4,semester);
                for(int i=1;i<8;i++){
                    flag=false;
                    for(int j=0;j<course4.size();j++){
                        courseWeek = Integer.parseInt(course4.get(j).getCourseWeek());
                        if(courseWeek==i){
            %>
            <th><%=course4.get(j).getCourseName()%> <br> <%=course4.get(j).getCoursePlace()%></th>
            <%
                        flag=true;
                        break; }
                }
                if (!flag){%>
            <th>&nbsp;&nbsp;</th>
            <%
                    }
                }
            %>
        </tr>
        <tr>
            <th>5</th>
            <%
                List<Course> course5=st.getMylocationAndSemesterCourse(username,5,semester);
                for(int i=1;i<8;i++){
                    flag=false;
                    for(int j=0;j<course5.size();j++){
                        courseWeek = Integer.parseInt(course5.get(j).getCourseWeek());
                        if(courseWeek==i){
            %>
            <th><%=course5.get(j).getCourseName()%> <br> <%=course5.get(j).getCoursePlace()%></th>
            <%
                        flag=true;
                        break; }
                }
                if (!flag){%>
            <th>&nbsp;&nbsp;</th>
            <%
                    }
                }
            %>
        </tr>
        <tr>
            <th>6</th>
            <%
                List<Course> course6=st.getMylocationAndSemesterCourse(username,6,semester);
                for(int i=1;i<8;i++){
                    flag=false;
                    for(int j=0;j<course6.size();j++){
                        courseWeek = Integer.parseInt(course6.get(j).getCourseWeek());
                        if(courseWeek==i){
            %>
            <th><%=course6.get(j).getCourseName()%> <br> <%=course6.get(j).getCoursePlace()%></th>
            <%
                        flag=true;
                        break; }
                }
                if (!flag){%>
            <th>&nbsp;&nbsp;</th>
            <%
                    }
                }
            %>
        </tr>
        <tr>
            <th>7</th>
            <%
                List<Course> course7=st.getMylocationAndSemesterCourse(username,7,semester);
                for(int i=1;i<8;i++){
                    flag=false;
                    for(int j=0;j<course7.size();j++){
                        courseWeek = Integer.parseInt(course7.get(j).getCourseWeek());
                        if(courseWeek==i){
            %>
            <th><%=course7.get(j).getCourseName()%> <br> <%=course7.get(j).getCoursePlace()%></th>
            <%
                        flag=true;
                        break; }
                }
                if (!flag){%>
            <th>&nbsp;&nbsp;</th>
            <%
                    }
                }
            %>
        </tr>
        <tr>
            <th>8</th>
            <%
                List<Course> course8=st.getMylocationAndSemesterCourse(username,8,semester);
                for(int i=1;i<8;i++){
                    flag=false;
                    for(int j=0;j<course8.size();j++){
                        courseWeek = Integer.parseInt(course8.get(j).getCourseWeek());
                        if(courseWeek==i){
            %>
            <th><%=course8.get(j).getCourseName()%> <br> <%=course8.get(j).getCoursePlace()%></th>
            <%
                        flag=true;
                        break; }
                }
                if (!flag){%>
            <th>&nbsp;&nbsp;</th>
            <%
                    }
                }
            %>
        </tr>

    </table>
</div>
<div id="div1.9">
    <a href="sysmess.jsp?username=<%=username%>">系统消息</a>
    <a href="peoplemess.jsp?username=<%=username%>">人工消息</a>
    <a href="myFeedback.jsp?username=<%=username%>">我的反馈</a>
</div>

</body>
</html>
