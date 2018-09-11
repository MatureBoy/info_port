<%@ page import="org.xh.AdminTest.myMethod.studentUserImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="com.xh.AdminTest.vo.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.xh.AdminTest.vo.*" %><%--
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
    boolean flag11=true;
    if(username==null)
    {
        flag11=false;
    }

%>
<!DOCTYPE html>
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
                        <li><a href="index.html" class="scroll-top"><b>主页</b></a></li>
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
                                <li><a href="#tab1" class="active">本月消费信息</a></li>
                                <li><a href="#tab2">图书借阅信息</a></li>
                                <li><a href="#tab3">我的课表</a></li>
                                <li><a href="#tab4">我的消息</a></li>
                                <li><a href="#tab5">我要反馈</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8"style="width:80%; height:100%"  >
                        <section id="first-tab-group" class="tabgroup" style="height:100%" >
                            <div id="tab1">
                                <div class="text-content" style="" >
                                    <h3>当月消费信息</h3>
                                    <%
                                        studentUserImpl st1=new studentUserImpl();
                                        List<MonthPay> monthPay=st1.getMyMonthPayInfo(username);
                                        Calendar now = Calendar.getInstance();
                                        int month= now.get(Calendar.MONTH) + 1;
                                        MonthPay thisMonthPay=st1.getMyMonthPayByMonth(monthPay,month);
                                    %>
                                    <table class="table-bordered" style ="table-3">
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
                                        </table>


                                </div>
                            </div>
                            <div id="tab2">
                                <div class=" text-content " >
                                    <table class="table-4">
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
                            <div id="tab3">
                                <div class="text-content">

                                    <div class="dropdown div-inline" id="div1.5" >
                                        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                            <%=choose%>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right" id="div1.6">
                                            <%
                                                String chinese="一二三四五六七八";
                                                for(int i=0;i<8;i++){
                                            %>
                                            <a class="dropdown-item" href="stu_1.jsp?semester=<%=i+1%>&choose=第<%=chinese.charAt(i)%>学期">第<%=chinese.charAt(i)%>学期</a>
                                            <%
                                                }

                                            %>

                                </div>
                                    </div>
                                <div id="div1.8">
                                    <table class="table-bordered table-2">
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

                                </div>
                            </div>
                            <div id="tab4">
                                <div class=" text-content " >

                                    <div>
                                        <table class="table-bordered table-4">
                                            <thead>系统消息</thead>
                                            <tr>
                                                <th>日期</th>
                                                <th>消息</th>
                                            </tr>
                                            <%
                                                List<SystemMessage> sysMess=st1.getSystemMessage();
                                                for(int i=0;i<sysMess.size();i++){
                                            %>
                                            <tr>
                                                <td><%=sysMess.get(i).getDate()%></td>
                                                <td><%=sysMess.get(i).getInfo()%></td>
                                            </tr>
                                            <%
                                                }
                                            %>

                                        </table>
                                    </div>

                                    <div>
                                        <table class="table-bordered table-4">
                                            <thead>人工消息</thead>
                                            <tr>
                                                <th>发送方</th>
                                                <th>内容</th>
                                                <th>日期</th>
                                            </tr>
                                            <%
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

                                        </table>
                                    </div>

                                </div>
                            </div>
                            <div id="tab5">
                                <div class="text-content" >

                                    <div>
                                        <label for="demo">输入您的意见</label>
                                        <script language="JavaScript">
                                            function  tips(){
                                                alert("信息发送成功");
                                            }
                                        </script>
                                        <div class="input-group mb-3" style="width:70%">
                                            <form action="sumbitMyfeedback.jsp" method="post">
                                                <textarea  name="message1"class="form-control"></textarea>


                                                <div class="input-group-append">
                                                    <input type="submit" value="提交" style="background:black;font-color:white"onclick=tips()>
                                                </div>


                                            </form>
                                        </div>

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
                            <li><em>Email</em>: uestc@klmn.com</li>
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
