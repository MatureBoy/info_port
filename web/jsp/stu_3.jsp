<%@ page import="org.xh.AdminTest.myMethod.studentUserImpl" %>
<%@ page import="org.xh.AdminTest.vo.MyGrade" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="org.xh.AdminTest.vo.Course" %>
<!DOCTYPE html>
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
     System.out.println("nowYear:"+nowYear+" nowCourese："+nowCourseNature+" nowSemester"+nowSemester);
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
     boolean flag11=true;
     if(username==null)
     {
         flag11=false;
     }
 %>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!--
Tinker Template
http://www.templatemo.com/tm-506-tinker
-->
        <title>学生</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="../css/style.css" type="text/css">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="../css/fontAwesome.css">
        <link rel="stylesheet" href="../css/hero-slider.css">
        <link rel="stylesheet" href="../css/owl-carousel.css">
        <link rel="stylesheet" href="../css/templatemo-style.css">
        <link rel="stylesheet" href="../css/lightbox.css">
        <link rel="stylesheet" href="../css/style.css" type="text/css">

        <script src="../js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body>
    <a id="a1"href="../login.html"></a>
    <Script LANGUAGE = JavaScript>
        if(!<%=flag11%>)
        {
            document.getElementById("a1").click();
        }
    </Script>
  <div class="header">
        <div class="container">
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="#" class="navbar-brand scroll-top">统一信息门户</a>
                </div>
                <!--/.navbar-header-->
                <div id="main-nav" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp" class="scroll-top"><b>主页</b></a></li>
                        <li><a href="#" class="scroll-link" data-id="about">关于我们</a></li>
                        <li><a href="#" class="scroll-link" data-id="contact-us">联系我们</a></li>
                        <li><a href="../login.html" class="scroll-link" data-id="contact-us">退出登入</a></li>
                    </ul>
                </div>
                <!--/.navbar-collapse-->
            </nav>
            <!--/.navbar-->
        </div>
        <!--/.container-->
    </div>
    <!--/.header-->
    
    <div style="height:300px">
     <section id="about" class="page-section" >
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <p ><font size="6">新闻 </font><p>
                        <a href="http://www.news.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65475">
                        <P>2018年学校本科深造率超过2/3  </P> </a>
                        <a href="http://www.news.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65493">
                        <P>学校与省医院共商医学院未来发展 </P> </a>
                        <a href="http://www.news.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65486">
                        <P>学校举办2018年中青年干部培训班 </P> </a>
                        <a href="http://www.news.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65506">
                
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <p><font size="6">&nbsp;</font></p>
                         <a href="http://www.news.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65506">
                        <P>2018EMC2全国博士生学术论坛我校召开 </P> </a>
                        <a href="http://www.news.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65504">
                        <P>“临床药学实践与创新”全国研究生暑期学校</P> </a>
                        <a href="http://www.news.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65479">
                        <P>IEEE Fellow施巍松教授做客名师讲堂</P> </a>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <p><font size="6">公告</font></p>
                        <a href="http://www.new1.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65508">
                        <P>2018年秋季校园招聘邀请函 </P> </a>
                        <a href="http://www.new1.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65528">
                        <P>电子科技博物馆暑期开放公告 </P> </a>
                        <a href="http://www.new1.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65494">
                        <P>校医院沙河院区门诊修缮公告</P> </a>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <p><font size="6">&nbsp;</font></p>
                        <a href="http://www.new1.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65498">
                        <P>做好2018年学校暑假安全工作的通知</P> </a>
                        <a href="http://www.new1.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65520">
                        <P>暑假期间体育场地（馆）开放安排</P></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<div style="height:350px">
     <section id="about" class="page-section" >
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <h4>基本情况</h4>
                        <div class="line-dec"></div>
                        <div class="primary-blue-button">
                            <a href="stu_1.jsp" class="scroll-link" data-id="portfolio">进入</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <h4>我的信息</h4>
                        <div class="line-dec"></div>
                        <div class="primary-blue-button">
                            <a href="stu_2.jsp" class="scroll-link" data-id="portfolio">进入</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <h4>我的学习</h4>
                        <div class="line-dec"></div>
                        <div class="primary-blue-button">
                            <a href="stu_3.jsp" class="scroll-link" data-id="portfolio">进入</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <h4>我的生活</h4>
                        <div class="line-dec"></div>
                        <div class="primary-blue-button">
                            <a href="stu_4.jsp" class="scroll-link" data-id="portfolio">进入</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

 <div class="tabs-content" id="blog" >
        <div class="container">
            <div class="row">
                <div class="wrapper" style="width:100%">
                    <div class="col-md-4"style="width:20%">
                        <div class="section-heading">

                            <div class="line-dec"></div>

                            <ul class="tabs clearfix" data-tabgroup="first-tab-group" >
                                <li><a href="#tab1" class="active">成绩查询</a></li>
                                <li><a href="#tab2">考试信息查询</a></li>
                                <li><a href="#tab3">我的选课信息</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8"style="width:80%; height:100%"  >
                        <section id="first-tab-group" class="tabgroup" style="height:100%" >
                            <div id="tab1">
                                <div class="text-content" style="" >
                                    <div class="dropdown div-inline" id="div1.5" >
                                        <button type="button" class="btn btn-primary dropdown-toggle"name="button1"data-toggle="dropdown">
                                            <%=firstFlagName%>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right" id="div1.4">
                                            <%
                                                for(int i=0;i<firstChoose.length;i++){
                                            %>
                                            <a class="dropdown-item" href="stu_3.jsp?firstFlag=<%=i%>"><%=firstChoose[i]%></a>

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
                                            <a class="dropdown-item" href="stu_3.jsp?firstFlag=<%=firstFlagInt%>&nowYear=<%=nowChoose[i]%>"><%=nowChoose[i]%>
                                            </a>
                                            <%
                                                    }}
                                            %>

                                            <%
                                                if(nowChoose==semester){
                                                    for(int i=0;i<nowChoose.length;i++){

                                            %>
                                            <a class="dropdown-item" href="stu_3.jsp?firstFlag=<%=firstFlagInt%>&nowSemester=<%=nowChoose[i]%>"><%=nowChoose[i]%>
                                            </a>
                                            <%
                                                    }}
                                            %>


                                            <%
                                                if(nowChoose==courseNature){
                                                    for(int i=0;i<nowChoose.length;i++){

                                            %>
                                            <a class="dropdown-item" href="stu_3.jsp?firstFlag=<%=firstFlagInt%>&nowCourseNature=<%=nowChoose[i]%>"><%=nowChoose[i]%>
                                            </a>
                                            <%
                                                    }}
                                            %>
                                        </div>
                                    </div>

                                    <table class="table-bordered table-x " style="width:200px" >
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
                                </div>
                            </div>
                            <div id="tab2">
                                <div class=" text-content " >
                                    <table class="table-bordered table-x" style="width:350px">
                                        <tr ><h2>考试信息</h2></tr>
                                        <tr><form action="stu_3.jsp" method="post">
                                            <p><h4>请输入学期进行查询,如（1）</h4></p> <input name="semester1"type="text"style="color: black" >
                                            <input type="submit" value="确定查询" style="background:black;font-color:white">
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
                            </div>
                            <div id="tab3">
                                <div class="text-content" >
                                    <table class="table-bordered table-2">
                                        <tr ><h3>选课信息(列出该学生所有的已选课程的信息)</h3></tr>
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
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-12">
                    <div class="logo">
                        <a href="#" class="scroll-top"><em>信</em>息门户</a>
                        <p>Information <span>Portal Platform</span></p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12">
                   
                </div>
                <div class="col-md-2 col-sm-12">
                    <div class="contact-info">
                        <h4>More Info</h4>
                        <ul>
                            <li><em>Group:</em>: 快乐码农</li>
                            <li><em>Email</em>: uestc@klmn.com</li><li><em>项目小组</em>: 快乐码农</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 col-sm-12">
                    <div class="connect-us">
                        <h4>Get Social with us</h4>
                        <ul>
                            <li><a href="https://www.facebook.com/templatemo" target="_parent"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://www.google.com/+templatemo" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script>window.jQuery || document.write('<script src="../js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="../js/vendor/bootstrap.min.js"></script>
    <script src="../js/plugins.js"></script>
    <script src="../js/main.js"></script>

    
   
</body>
</html>
