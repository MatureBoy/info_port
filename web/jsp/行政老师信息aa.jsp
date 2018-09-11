<%@ page import="java.util.List" %>
<%@ page import="org.zs.databaseconnector.dao.imply.*" %>
<%@ page import="org.zs.databaseconnector.vo.*" %>
<%@ page pageEncoding="utf-8" %><%
    request.setCharacterEncoding("UTF-8");
    String gov_id=(String)session.getAttribute("username");
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
    <title>行政老师页面</title>
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
                    <li><a href="行政老师信息aa.jsp" class="scroll-top"><b>主页</b></a></li>
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
<div style="height:400px">
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
                            <P>“临床药学实践创新”全国研究生暑期学校</P> </a>
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


<div class="tabs-content" id="blog" >
    <div class="container">
        <div class="row">
            <div class="wrapper" style="width:100%">
                <div class="col-md-4"style="width:20%">
                    <div class="section-heading">
                        <h4>功能栏</h4>
                        <div class="line-dec"></div>
                        <ul class="tabs clearfix" data-tabgroup="first-tab-group" >
                            <li><a href="#tab1" class="active">教师课表查询</a></li>
                            <li><a href="#tab2">科研项目</a></li>
                            <li><a href="#tab3">我的信息</a></li>
                            <li><a href="#tab4">生源地查询</a></li>
                            <li><a href="#tab5">毕业信息查询</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-8"style="width:80% height:100%"  >
                    <section id="first-tab-group" class="tabgroup" style="height:100" >
                        <div id="tab1">
                            <div class="text-content" style="height:520px ;background-color:rgba(0,0,0,0.5);width:950px" >
                                <form action="行政老师信息aa.jsp" method="post" >
                                    <input type="text"name="teacher_id" style="color: black">
                                    <input type="submit" value="提交" style="background:black;font-color:white">
                                </form>
                                <%
                                    String teacher_id=request.getParameter("teacher_id");
                                    Courseimpl courseimpl= new Courseimpl();
                                    List<Course> list_tea=courseimpl.findbyTid(teacher_id);
                                %>
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
                                            int courseWeek;
                                            boolean flag;
                                            for(int i=1;i<8;i++){
                                                flag=false;
                                                for(int j=0;j<list_tea.size();j++){
                                                    courseWeek = (list_tea.get(j).getCourse_week());
                                                    if(courseWeek==i){
                                        %>
                                        <%
                                            if(list_tea.get(j).getCourse_jie()==1||list_tea.get(j).getCourse_jie()==2){
                                        %>
                                        <th><%=list_tea.get(j).getCourse_name()%> </th>
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
                                                    courseWeek2 = (list_tea.get(j).getCourse_week());
                                                    if(courseWeek2==i){
                                        %>
                                        <%
                                            if(list_tea.get(j).getCourse_jie()==1||list_tea.get(j).getCourse_jie()==2){
                                        %>
                                        <th><%=list_tea.get(j).getCourse_name()%> </th>
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
                                                    courseWeek3 = (list_tea.get(j).getCourse_week());
                                                    if(courseWeek3==i){
                                        %>
                                        <%
                                            if(list_tea.get(j).getCourse_jie()==3||list_tea.get(j).getCourse_jie()==4){
                                        %>
                                        <th><%=list_tea.get(j).getCourse_name()%> </th>
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
                                                    courseWeek4 = (list_tea.get(j).getCourse_week());
                                                    if(courseWeek4==i){
                                        %>
                                        <%
                                            if(list_tea.get(j).getCourse_jie()==3||list_tea.get(j).getCourse_jie()==4){
                                        %>
                                        <th><%=list_tea.get(j).getCourse_name()%> </th>
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
                                                    courseWeek5 = (list_tea.get(j).getCourse_week());
                                                    if(courseWeek5==i){
                                        %>
                                        <%
                                            if(list_tea.get(j).getCourse_jie()==5||list_tea.get(j).getCourse_jie()==6){
                                        %>
                                        <th><%=list_tea.get(j).getCourse_name()%> </th>
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
                                                    courseWeek6 = (list_tea.get(j).getCourse_week());
                                                    if(courseWeek6==i){
                                        %>
                                        <%
                                            if(list_tea.get(j).getCourse_jie()==5||list_tea.get(j).getCourse_jie()==6){
                                        %>
                                        <th><%=list_tea.get(j).getCourse_name()%> </th>
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
                                                    courseWeek7 = (list_tea.get(j).getCourse_week());
                                                    if(courseWeek7==i){
                                        %>
                                        <%
                                            if(list_tea.get(j).getCourse_jie()==7||list_tea.get(j).getCourse_jie()==8){
                                        %>
                                        <th><%=list_tea.get(j).getCourse_name()%> </th>
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
                                                    courseWeek8 = (list_tea.get(j).getCourse_week());
                                                    if(courseWeek8==i){
                                        %>
                                        <%
                                            if(list_tea.get(j).getCourse_jie()==7||list_tea.get(j).getCourse_jie()==8){
                                        %>
                                        <th><%=list_tea.get(j).getCourse_name()%> </th>
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
                        <div id="tab2">
                            <div class=" text-content  "style="height:520px ;background-color:rgba(0,0,0,0.5);width:950px" >
                                <table class="table-bordered table-1"style="width:500px">

                                    <tr>
                                        <td>编号</td>
                                        <td>科研名称</td>
                                        <td>科研经费</td>
                                        <td>具体简介</td>
                                    </tr>
                                    <%
                                        Scienceimpl s1=new Scienceimpl();
                                        List<Science> sc1=s1.findbySid();
                                        for(int i=0;i<sc1.size();i++){

                                    %>
                                    <tr>
                                        <td><%=sc1.get(i).getSc_id()%></td>
                                        <td><%=sc1.get(i).getSc_name()%></td>
                                        <td><%=sc1.get(i).getSc_money()%></td>
                                        <td><%=sc1.get(i).getSc_leader()%></td>
                                    </tr>
                                    <%  }  %>

                                </table>
                                </div>
                        </div>
                        <div id="tab3">
                            <div class="text-content"style="height:520px ;background-color:rgba(0,0,0,0.5);width:950px" >
                                <%

                                    Gover_teacherimpl t=new Gover_teacherimpl();
                                    List<Gover_teacher> t1 = t.findByID(gov_id);
                                %>
                                <table class="table-bordered table-1" style="width:350px"><!-- border-radius:5px;overflow:hidden-->

                                    <tr><td> 教师信息</td><td><%=t1.get(0).getG_job()%></td></tr>
                                    <tr><td>工资信息 </td><td><%=t1.get(0).getG_salary()%></td></tr>
                                    <tr><td>一卡通余额 </td><td><%=t1.get(0).getG_rest()%></td></tr>
                                    <tr><td>id </td><td> <%=t1.get(0).getG_id()%>  </td> </tr>
                                    <tr><td>名字 </td><td><%=t1.get(0).getG_name()%></td></tr>
                                    <tr><td>电话 </td><td><%=t1.get(0).getG_telenum()%></td></tr>

                                </table>
                            </div>
                        </div>
                        <div id="tab4">
                            <div class="text-content"style="height:520px ;background-color:rgba(0,0,0,0.5);width:950px" >
                                <table class="table-bordered table-1" style="width:350px">
                                    <%
                                        from_where_impl f1= new from_where_impl();
                                        List<Place> list_place=f1.findbypname();
                                        Rateimpl r1=new Rateimpl();
                                        List<Rate> list_rate=r1.findByxueli();

                                    %>
                                    <tr>
                                        <td><b>生源地</b></td>
                                        <td><b>人&nbsp&nbsp数</b></td>
                                    </tr>
                                    <%for(int i=0;i<list_place.size();i++){%>
                                    <tr>
                                        <td><%=list_place.get(i).getP_name()%></td>
                                        <td><%=list_place.get(i).getP_num()%></td>
                                    </tr>
                                    <%}%>
                                </table>
                            </div>
                        </div>
                        <div id="tab5">
                            <div class="text-content"style="height:520px ;background-color:rgba(0,0,0,0.5);width:950px" >
                                <table class="table-bordered table-1" style="width:400px">
                                <tr>
                                    <th>学&nbsp&nbsp历</th>
                                    <th>就&nbsp业&nbsp率</th>
                                    <th>就&nbsp业&nbsp去&nbsp向</th>
                                </tr>
                                <%for(int i=0;i<list_rate.size();i++){%>
                                <tr>
                                    <td><%=list_rate.get(i).getR_xueli()%></td>
                                    <td><%=list_rate.get(i).getR_gowhere()%></td>
                                    <td><%=list_rate.get(i).getR_rate()%></td>
                                </tr>
                                <%}%>
                            </table>
                            </div>
                        </div>
                        <div id="tab6">
                            <div class="text-content"style="height:520px ;background-color:rgba(0,0,0,0.5);width:950px" >
                                <h4>5</h4>
                                <span><a href="#">E-Commerce</a> / <a href="#">John</a> / <a href="#">12 August 2017</a></span>
                                <p>Aliquam erat volutpat. Nulla at nunc nec ante rutrum congue id in diam. Nulla at lectus non turpis placerat volutpat lacinia ut mi. Quisque ultricies maximus justo a blandit. Donec sit amet commodo arcu. Sed sit amet iaculis mi, vel fermentum nisi. Morbi dui enim, vestibulum non accumsan ac, tempor non nisl.</p>
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
