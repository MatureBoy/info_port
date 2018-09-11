<%@ page import="org.xh.AdminTest.myMethod.studentUserImpl" %>
<%@ page import="org.xh.AdminTest.vo.Consumption" %>
<%@ page import="java.util.List" %>
<%@ page import="org.xh.AdminTest.vo.MonthPay" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%
    String username=(String)session.getAttribute("username");
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
                    <div class="col-md-4"style="width:23%">
                        <div class="section-heading">
                            <h4>功能栏</h4>
                            <div class="line-dec"></div>
                            <p>请点击按钮</p>
                            <ul class="tabs clearfix" data-tabgroup="first-tab-group" >
                                <li><a href="#tab1" class="active">一卡通消费记录</a></li>
                                <li><a href="#tab2">寝室用电</a></li>
                                <li><a href="#tab3">个人网费</a></li>
                                <li><a href="#tab4">水费</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8"style="width:70% ;height:100%"  >
                        <section id="first-tab-group" class="tabgroup" style="height:100%" >
                            <div id="tab1">
                                <div class="text-content" style="" >
                                    <table class="table-bordered table-x" style="width:240px">
                                        <thead><h2>一卡通消费记录</h2></thead>
                                        <tr>
                                            <th>消费记录</th>
                                            <th>日期</th>
                                        </tr>
                                        <%
                                            studentUserImpl st1=new studentUserImpl();
                                            List<Consumption> sysMess=st1.getMyConsumptionInfo(username);
                                            for(int i=0;i<sysMess.size();i++){
                                        %>
                                        <tr>
                                            <td><%=sysMess.get(i).getConsumptionMoney()%></td>
                                            <td><%=sysMess.get(i).getDate()%></td>
                                        </tr>
                                        <%
                                            }
                                        %>

                                    </table>
                                </div>
                            </div>
                            <div id="tab2">
                                <div class=" text-content " >
                                    <table class="table-bordered table-x"style="width:230px">
                                        <thead><h2>寝室用电</h2></thead>
                                        <tr>
                                            <th>月份</th>
                                            <th>消费记录</th>
                                        </tr>
                                        <%
                                            List<MonthPay> monthPay=st1.getMyMonthPayInfo(username);
                                            for(int i=0;i<monthPay.size();i++){
                                        %>
                                        <tr>
                                            <td><%=monthPay.get(i).getMonth()%></td>
                                            <td><%=monthPay.get(i).getElectric_fee()%></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                            <div id="tab3">
                                <div class="text-content">
                                    <table class="table-bordered table-x" style="width:240px">
                                        <thead><h2>网费</h2></thead>
                                        <tr>
                                            <th>月份</th>
                                            <th>网费</th>
                                        </tr>
                                        <%
                                            for(int i=0;i<monthPay.size();i++){
                                        %>
                                        <tr>
                                            <td><%=monthPay.get(i).getMonth()%></td>
                                            <td><%=monthPay.get(i).getNetwork_fee()%></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                            <div id="tab4">
                                <div class="text-content" >
                                    <table class="table-bordered table-x" style="width:230px">
                                        <thead><h2>水费</h2></thead>
                                        <tr>
                                            <th>月份</th>
                                            <th>水费</th>
                                        </tr>
                                        <%
                                            for(int i=0;i<monthPay.size();i++){
                                        %>
                                        <tr>
                                            <td><%=monthPay.get(i).getMonth()%></td>
                                            <td><%=monthPay.get(i).getWater_fee()%></td>
                                        </tr>
                                        <%
                                            }
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
