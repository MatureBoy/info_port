<%@ page import="org.yh.dbconnect.vo.Counseller" %>
<%@ page import="org.yh.dbconnect.dao.CounsellerDao" %>
<%@ page import="java.util.List" %>
<%@ page import="org.yh.dbconnect.factory.Factory" %>
<%@ page import="org.yh.dbconnect.dao.ResearchDao" %>
<%@ page import="org.yh.dbconnect.vo.Research" %>
<%@ page import="org.yh.dbconnect.dao.TeacourseDao" %>
<%@ page import="org.yh.dbconnect.vo.Teacourse" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    CounsellerDao counsellerDao= Factory.getCounsellerDao();
    List<Counseller> list_coun=counsellerDao.findall();
    // String safeCode=(String)session.getAttribute("username");
    // boolean flag11=true;

    // if(safeCode==null)
    //     flag11=false;
%>
<%
    ResearchDao researchDao= Factory.getResearchDao();
    List<Research> list_research=researchDao.FindAll();
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
        <title>辅导员</title>
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
                        <h4>我的事务</h4>
                        <div class="line-dec"></div>
                        <div class="primary-blue-button">
                            <a href="cou_1.jsp" class="scroll-link" data-id="portfolio">进入</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <h4>重点学生</h4>
                        <div class="line-dec"></div>
                        <div class="primary-blue-button">
                            <a href="cou_2.jsp" class="scroll-link" data-id="portfolio">进入</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <h4>学生学习</h4>
                        <div class="line-dec"></div>
                        <div class="primary-blue-button">
                            <a href="cou_3.jsp" class="scroll-link" data-id="portfolio">进入</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <h4>学生事务</h4>
                        <div class="line-dec"></div>
                        <div class="primary-blue-button">
                            <a href="cou_3.jsp" class="scroll-link" data-id="portfolio">进入</a>
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
                    <div class="col-md-4"style="width:18%">
                        <div class="section-heading">
                            <h4>功能栏</h4>
                            <div class="line-dec"></div>
                            <ul class="tabs clearfix" data-tabgroup="first-tab-group" >
                                <li><a href="#tab1" class="active">个人信息</a></li>
                                <li><a href="#tab2">科研动态</a></li>
                                <li><a href="#tab3">教师课表</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8"style="width:75%; height:100%"  >
                        <section id="first-tab-group" class="tabgroup" style="height:100%" >
                            <div id="tab1">
                                <div class="text-content" style="" >
                                    <h2>辅导员个人信息</h2>
                                        <table class="table-hover" border-radius:5px;overflow:hidden>
                                            <%
                                                for(Counseller counseller:list_coun){
                                            %>
                                            <tr><b> 辅导员职工号</b><p><%=counseller.getCoun_id()%></p></tr>
                                            <tr >名字<p ><%=counseller.getCoun_name()%></p></tr>
                                            <tr>性别<p><%=counseller.getSex()%></p></tr>
                                            <tr>年龄<p><%=counseller.getAge()%></p></tr>
                                            <tr>工资 <p><%=counseller.getSalary()%></p></tr>
                                            <tr>电话 <p><%=counseller.getPhone()%></p></tr>
                                            <tr>邮箱 <p><%=counseller.getEmail()%></p></tr>

                                        <%
                                            }
                                        %>
                                        </table>
                                </div>
                            </div>
                            <div id="tab2">
                                <div class=" text-content " >
                                    <table class="table-bordered table-2" style="color: white">
                                        <tr>
                                            <td>科研名称</td>
                                            <td>人数</td>
                                            <td>项目经费</td>
                                            <td>项目编号</td>
                                        </tr>
                                        <%
                                            for(Research research:list_research){
                                        %>
                                        <tr>
                                            <td><%=research.getRes_name()%></td>
                                            <td><%=research.getRes_person()%></td>
                                            <td><%=research.getRes_fee()%></td>
                                            <td><%=research.getRes_id()%></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                            <div id="tab3">
                                <div class="text-content">
                                    <form action="cou_1.jsp"method="post"><input style="color: black" type="text"name="teacher_id">
                                        <input type="submit" value="提交"style="background:black;font-color:white">
                                    </form>
                                    <%
                                        String teacher_id=request.getParameter("teacher_id");
                                        TeacourseDao teacourseDao= Factory.getTeacourseDaoImpl();
                                        List<Teacourse> list_tea=teacourseDao.FindCourseBytea(teacher_id);
                                    %>
                                    <table class="table-bordered table-2" style="color: white">
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
                                                int courseWeek;
                                                boolean flag;
                                                for(int i=1;i<8;i++){
                                                    flag=false;
                                                    for(int j=0;j<list_tea.size();j++){
                                                        courseWeek = (list_tea.get(j).getWeek());
                                                        if(courseWeek==i){
                                            %>
                                            <%
                                                if(list_tea.get(j).getSection()==1||list_tea.get(j).getSection()==2){
                                            %>
                                            <th><%=list_tea.get(j).getCourse_name()%> <br> <%=list_tea.get(j).getCourse_place()%></th>
                                            <%
                                                            flag=true;
                                                            break; }
                                                    }
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
                                                int courseWeek2;
                                                boolean flag2;
                                                for(int i=1;i<8;i++){
                                                    flag2=false;
                                                    for(int j=0;j<list_tea.size();j++){
                                                        courseWeek2 = (list_tea.get(j).getWeek());
                                                        if(courseWeek2==i){
                                            %>
                                            <%
                                                if(list_tea.get(j).getSection()==1||list_tea.get(j).getSection()==2){
                                            %>
                                            <th><%=list_tea.get(j).getCourse_name()%> <br> <%=list_tea.get(j).getCourse_place()%></th>
                                            <%
                                                            flag2=true;
                                                            break; }
                                                    }
                                                }
                                                if (!flag2){%>
                                            <th>&nbsp;&nbsp;</th>
                                            <%
                                                    }
                                                }
                                            %>
                                        </tr>
                                        <tr>
                                            <th>3</th>
                                            <%
                                                int courseWeek3;
                                                boolean flag3;
                                                for(int i=1;i<8;i++){
                                                    flag3=false;
                                                    for(int j=0;j<list_tea.size();j++){
                                                        courseWeek3 = (list_tea.get(j).getWeek());
                                                        if(courseWeek3==i){
                                            %>
                                            <%
                                                if(list_tea.get(j).getSection()==3||list_tea.get(j).getSection()==4){
                                            %>
                                            <th><%=list_tea.get(j).getCourse_name()%> <br> <%=list_tea.get(j).getCourse_place()%></th>
                                            <%
                                                            flag3=true;
                                                            break; }
                                                    }
                                                }
                                                if (!flag3){%>
                                            <th>&nbsp;&nbsp;</th>
                                            <%
                                                    }
                                                }
                                            %>
                                        </tr>
                                        <tr>
                                            <th>4</th>
                                            <%
                                                int courseWeek4;
                                                boolean flag4;
                                                for(int i=1;i<8;i++){
                                                    flag4=false;
                                                    for(int j=0;j<list_tea.size();j++){
                                                        courseWeek4 = (list_tea.get(j).getWeek());
                                                        if(courseWeek4==i){
                                            %>
                                            <%
                                                if(list_tea.get(j).getSection()==3||list_tea.get(j).getSection()==4){
                                            %>
                                            <th><%=list_tea.get(j).getCourse_name()%> <br> <%=list_tea.get(j).getCourse_place()%></th>
                                            <%
                                                            flag4=true;
                                                            break; }
                                                    }
                                                }
                                                if (!flag4){%>
                                            <th>&nbsp;&nbsp;</th>
                                            <%
                                                    }
                                                }
                                            %>
                                        </tr>
                                        <tr>
                                            <th>5</th>
                                            <%
                                                int courseWeek5;
                                                boolean flag5;
                                                for(int i=1;i<8;i++){
                                                    flag5=false;
                                                    for(int j=0;j<list_tea.size();j++){
                                                        courseWeek5 = (list_tea.get(j).getWeek());
                                                        if(courseWeek5==i){
                                            %>
                                            <%
                                                if(list_tea.get(j).getSection()==5||list_tea.get(j).getSection()==6){
                                            %>
                                            <th><%=list_tea.get(j).getCourse_name()%> <br> <%=list_tea.get(j).getCourse_place()%></th>
                                            <%
                                                            flag5=true;
                                                            break; }
                                                    }
                                                }
                                                if (!flag5){%>
                                            <th>&nbsp;&nbsp;</th>
                                            <%
                                                    }
                                                }
                                            %>
                                        </tr>
                                        <tr>
                                            <th>6</th>
                                            <%
                                                int courseWeek6;
                                                boolean flag6;
                                                for(int i=1;i<8;i++){
                                                    flag6=false;
                                                    for(int j=0;j<list_tea.size();j++){
                                                        courseWeek6 = (list_tea.get(j).getWeek());
                                                        if(courseWeek6==i){
                                            %>
                                            <%
                                                if(list_tea.get(j).getSection()==5||list_tea.get(j).getSection()==6){
                                            %>
                                            <th><%=list_tea.get(j).getCourse_name()%> <br> <%=list_tea.get(j).getCourse_place()%></th>
                                            <%
                                                            flag6=true;
                                                            break; }
                                                    }
                                                }
                                                if (!flag6){%>
                                            <th>&nbsp;&nbsp;</th>
                                            <%
                                                    }
                                                }
                                            %>
                                        </tr>
                                        <tr>
                                            <th>7</th>
                                            <%
                                                int courseWeek7;
                                                boolean flag7;
                                                for(int i=1;i<8;i++){
                                                    flag7=false;
                                                    for(int j=0;j<list_tea.size();j++){
                                                        courseWeek7 = (list_tea.get(j).getWeek());
                                                        if(courseWeek7==i){
                                            %>
                                            <%
                                                if(list_tea.get(j).getSection()==7||list_tea.get(j).getSection()==8){
                                            %>
                                            <th><%=list_tea.get(j).getCourse_name()%> <br> <%=list_tea.get(j).getCourse_place()%></th>
                                            <%
                                                            flag7=true;
                                                            break; }
                                                    }
                                                }
                                                if (!flag7){%>
                                            <th>&nbsp;&nbsp;</th>
                                            <%
                                                    }
                                                }
                                            %>
                                        </tr>
                                        <tr>
                                            <th>8</th>
                                            <%
                                                int courseWeek8;
                                                boolean flag8;
                                                for(int i=1;i<8;i++){
                                                    flag8=false;
                                                    for(int j=0;j<list_tea.size();j++){
                                                        courseWeek8 = (list_tea.get(j).getWeek());
                                                        if(courseWeek8==i){
                                            %>
                                            <%
                                                if(list_tea.get(j).getSection()==7||list_tea.get(j).getSection()==8){
                                            %>
                                            <th><%=list_tea.get(j).getCourse_name()%> <br> <%=list_tea.get(j).getCourse_place()%></th>
                                            <%
                                                            flag8=true;
                                                            break; }
                                                    }
                                                }
                                                if (!flag8){%>
                                            <th>&nbsp;&nbsp;</th>
                                            <%
                                                    }
                                                }
                                            %>
                                        </tr>

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
                        <a href="#" class="scroll-top"><em>制</em>作团队</a>
                        <p>1 2 3 4 5 6 <span> 1</span></p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12">
                   
                </div>
                <div class="col-md-2 col-sm-12">
                    <div class="contact-info">
                        <h4>More Info</h4>
                        <ul>
                            <li><em>Phone</em>: 010-020-0340</li>
                            <li><em>Email</em>: tk@company.co</li>
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
