<%@ page import="org.xh.AdminTest.myMethod.studentUserImpl" %>
<%@ page import="org.xh.AdminTest.vo.MyGrade" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.xh.AdminTest.vo.Course" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    boolean flag=false;
    String semester1=request.getParameter("semester1");
    String[] firstChoose={"学年","学期","课程性质","课程名称"};
    String[] year={"2016-2017","2017-2018","2018-2019","2019-2020"};
    String[] semester={"第一学期","第二学期","第三学期","第四学期","第五学期","第六学期","第七学期","第八学期"};
    String[] courseNature={"必修","选修"};
    String nowSemester=request.getParameter("nowSemester");
    String nowYear=request.getParameter("nowYear");
    String nowCourseNature=request.getParameter("nowCourseNature");
    String username= (String) session.getAttribute("username");
    username=request.getParameter("username");
    username="s1001";
    String firstFlag=request.getParameter("firstFlag");
    String sencondFlagName=request.getParameter("sencondFlagName");
    if(nowYear!=null) {
        sencondFlagName = nowYear;
        flag = true;
    }
    if(nowCourseNature!=null){
        sencondFlagName=nowCourseNature;
        flag = true;
    }
    if(nowSemester!=null)
    {
        sencondFlagName=nowSemester;
        flag = true;
    }
    int firstFlagInt;

    if(firstFlag!=null)
        firstFlagInt=Integer.parseInt(firstFlag);
    else
        firstFlagInt=4;
    String firstFlagName;
    if(firstFlagInt!=4)
        firstFlagName=firstChoose[firstFlagInt];
    else
    {
        firstFlagName="请选择";
        sencondFlagName="请选择";
    }
    String[] nothing={"请选择"};
    String[] nowChoose;
    if(firstFlagInt==0)
        nowChoose=year;
    else if(firstFlagInt==1)
        nowChoose=semester;
    else if(firstFlagInt==2)
        nowChoose=courseNature;
    else
        nowChoose=nothing;
    studentUserImpl st= new studentUserImpl();
    List<MyGrade> myGrade=st.getMyGrade(username);
    List<MyGrade> myGradeUse=new ArrayList<MyGrade>();
    if(nowCourseNature!=null){
        if(nowCourseNature.equals("必修")){
            myGradeUse=st.getMyGradeByCourNature(myGrade,"1");
        }else{
            myGradeUse=st.getMyGradeByCourNature(myGrade,"0");
        }
    }

     if(nowSemester!=null){
        if(nowSemester.equals("第一学期")){
         myGradeUse=st.getMyGradeBySemester(myGrade,"1");
    }else if(nowSemester.equals("第二学期")){
         myGradeUse=st.getMyGradeBySemester(myGrade,"2");
    }else if(nowSemester.equals("第三学期")){
    myGradeUse=st.getMyGradeBySemester(myGrade,"3");
    }else if(nowSemester.equals("第四学期")){
    myGradeUse=st.getMyGradeBySemester(myGrade,"4");
    }else if(nowSemester.equals("第五学期")){
    myGradeUse=st.getMyGradeBySemester(myGrade,"5");
    }else if(nowSemester.equals("第六学期")){
    myGradeUse=st.getMyGradeBySemester(myGrade,"6");
    }else if(nowSemester.equals("第七学期")){
    myGradeUse=st.getMyGradeBySemester(myGrade,"7");
    }else
        myGradeUse=st.getMyGradeBySemester(myGrade,"8");
    }

    if(nowYear!=null)
    {
        myGradeUse=st.getMyGradeByYear(myGrade,nowYear);
    }

    if(sencondFlagName==null){
        sencondFlagName="请选择";
    }
    System.out.println("username:"+username);
    System.out.println(myGrade.size());
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的学习</title>
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
        <li><a >主页</a></li>
        <li><a >学校新闻</a></li>
        <li><a >请联系我们</a></li>
    </ul>
</div>
<div id="div3.1">
    <div class="dropdown div-inline" id="div1.5" >
        <button type="button" class="btn btn-primary dropdown-toggle"name="button1"data-toggle="dropdown">
           <%=firstFlagName%>
        </button>
        <div class="dropdown-menu dropdown-menu-right" id="div1.4">
        <%
            for(int i=0;i<firstChoose.length;i++){
        %>
            <a class="dropdown-item" href="myStudy.jsp?firstFlag=<%=i%>"><%=firstChoose[i]%></a>

            <%
                }
            %>
        </div>
    </div>
        <div class="dropdown div-inline" id="div1.8" >
            <button type="button" class="btn btn-primary dropdown-toggle"name="button2"data-toggle="dropdown">
                <%=sencondFlagName%>
            </button>
            <div class="dropdown-menu dropdown-menu-right" id="div1.6">
                <%
                    if(nowChoose==year){
                    for(int i=0;i<nowChoose.length;i++){

                %>
                <a class="dropdown-item" href="myStudy.jsp?firstFlag=<%=firstFlagInt%>&nowYear=<%=nowChoose[i]%>"><%=nowChoose[i]%>
                </a>
                <%
                    }}
                %>

                <%
                    if(nowChoose==semester){
                        for(int i=0;i<nowChoose.length;i++){

                %>
                <a class="dropdown-item" href="myStudy.jsp?firstFlag=<%=firstFlagInt%>&nowSemester=<%=nowChoose[i]%>"><%=nowChoose[i]%>
                </a>
                <%
                    }}
                %>


                <%
                    if(nowChoose==courseNature){
                        for(int i=0;i<nowChoose.length;i++){

                %>
                <a class="dropdown-item" href="myStudy.jsp?firstFlag=<%=firstFlagInt%>&nowCourseNature=<%=nowChoose[i]%>"><%=nowChoose[i]%>
                </a>
                <%
                    }}
                %>
            </div>
        </div>









</div>

    <table class="table-bordered">
        <h2 > 成绩查询</h2>
        <tr>
            <th>科目</th>
            <th>分数</th>
            <th>学分</th>
        </tr>
        <%
            for(int i=0;i<myGradeUse.size();i++){
        %>
        <tr>
            <td><%=myGradeUse.get(i).getCourseName()%></td>
            <td><%=myGradeUse.get(i).getCourseGrade()%></td>
            <td><%=myGradeUse.get(i).getCourseGredit()%></td>
        </tr>
        <%
            }
        %>
    </table>
</d</div>
<di<div id="div3.2">

    <table class="table-bordered">
        <tr >考试信息</tr>
        <tr><form action="myStudy.jsp" method="post">
           <p>请输入学期进行查询,如（1）</p> <input name="semester1"type="text" >
            <input type="submit" value="确定查询">
        </form>
        </tr>

        <tr>
            <th>课程名称</th>
            <th>考试时间</th>
            <th>考试地点</th>
            <th>座位号</th>
        </tr>
        <%
            List<Course> mycourseAll=st.getMyCourse(username);
            List<Course> myCourseUse=st.getMyCourseBySemester(mycourseAll,semester1);
            for(int i=0;i<myCourseUse.size();i++){
        %>
            <tr>
                <td><%=myCourseUse.get(i).getCourseName()%></td>
                <td><%=myCourseUse.get(i).getCourseExamTime()%></td>
                <td><%=myCourseUse.get(i).getCourseExamPlace()%></td>
                <td><%=myCourseUse.get(i).getCourseExamSeat()%></td>
            </tr>
        <%
            }
        %>
    </table>
</div>
<br>
<div id="div3.3">

    <table class="table-bordered">
        <tr >选课信息(列出该学生所有的已选课程的信息)</tr>
        <br>
        <tr>
            <th>课程名称</th>
            <th>课程性质</th>
            <th>上课教室</th>
            <th>课程学年</th>
        </tr>
        <%
            for(int i=0;i<mycourseAll.size();i++){
                if(mycourseAll.get(i).getCourseType().equals("1")){
        %>
        <tr>
            <td><%=mycourseAll.get(i).getCourseName()%></td>
            <td>必修</td>
            <td><%=mycourseAll.get(i).getCoursePlace()%></td>
            <td><%=mycourseAll.get(i).getCourseYear()%></td>
        </tr>
        <%
            }else{
        %>
        <tr>
            <td><%=mycourseAll.get(i).getCourseName()%></td>
            <td>选修</td>
            <td><%=mycourseAll.get(i).getCoursePlace()%></td>
            <td><%=mycourseAll.get(i).getCourseYear()%></td>
        </tr>
        <%
            }}
        %>
    </table>
</div>

<div id="div3.4">
    <a href="stufunction.jsp?username=<%=username%>">返回</a>
</div>

</body>
</html>
