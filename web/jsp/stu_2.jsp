<%@ page import="org.xh.AdminTest.myMethod.studentUserImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.xh.AdminTest.vo.*" %>
<%@ page import="org.xh.AdminTest.vo.*" %>
<!DOCTYPE html>
 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                                <li><a href="#tab1" class="active">我的学籍</a></li>
                                <li><a href="#tab2">缴费信息</a></li>
                                <li><a href="#tab3">奖助贷信息</a></li>
                                <li><a href="#tab4">我的实践</a></li>
                                <li><a href="#tab5">奖惩信息</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8"style="width:80% ;height:100%"  >
                        <section id="first-tab-group" class="tabgroup" style="height:100%" >
                            <div id="tab1">
                                <div class="text-content" style="" >
                                    <table class="table-bordered table-2">
                                        <%
                                            studentUserImpl st1=new studentUserImpl();
                                            Student myInfo=st1.getMyStuInfo(username);
                                        %>
                                        <h4>学籍信息</h4>
                                        <tr>
                                            <td>ID:</td>
                                            <td><%=myInfo.getStu_id()%></td>
                                        </tr>
                                        <tr>
                                            <td>姓名:</td>
                                            <td><%=myInfo.getName()%></td>
                                        </tr>
                                        <tr>
                                            <td>性别:</td>
                                            <td><%=myInfo.getSex()%></td>
                                        </tr>
                                        <tr>
                                            <td>年龄:</td>
                                            <td><%=myInfo.getAge()%></td>
                                        </tr>
                                        <tr>
                                            <td>籍贯:</td>
                                            <td><%=myInfo.getNative_place()%></td>
                                        </tr>
                                        <tr>
                                            <td>学院:</td>
                                            <td><%=myInfo.getInstituteName()%></td>
                                        </tr>
                                        <tr>
                                            <td>联系方式:</td>
                                            <td><%=myInfo.getPhoneNumber()%></td>
                                        </tr>
                                        <tr>
                                            <td>邮箱:</td>
                                            <td><%=myInfo.getEmailAddress()%></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div id="tab2">
                                <div class=" text-content " >
                                    <table class="table-bordered table-4">
                                        <tr > 缴费信息</tr>
                                        <tr>
                                            <th>学年</th>
                                            <th>应缴费金额</th>
                                            <th>缴费状态</th>
                                        </tr>
                                        <%
                                            studentUserImpl st2=new studentUserImpl();
                                            List<Money> money=st2.getMyMoneyInfo(username);
                                            List<Payment> payment=st2.getMyPaymentInfo(username);
                                            for(int i=0;i<payment.size();i++){
                                        %>
                                        <tr>
                                            <td><%=payment.get(i).getStu_year()%></td>
                                            <td><%=payment.get(i).getStu_num()%></td>
                                            <td><%=payment.get(i).getStu_status()%></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                            <div id="tab3">
                                <div class="text-content">
                                    <table class="table-bordered table-4">
                                        <tr> 奖学金记录</tr>
                                        <tr>
                                            <th>获奖学金日期</th>
                                            <th>奖学金金额</th>
                                        </tr>
                                        <%
                                            List<Money> rewardMoney=st2.getMyMoneyInfoByType("奖学金",money);
                                            for(int i=0;i<rewardMoney.size();i++){
                                        %>
                                        <tr>
                                            <td><%=rewardMoney.get(i).getDate()%></td>
                                            <td><%=rewardMoney.get(i).getMoneyNum()%></td>
                                        </tr>
                                        <%
                                            }
                                        %>

                                    </table>

                                    <br>
                                    <table class="table-bordered table-4">
                                        <tr >助学金记录</tr>
                                        <tr>
                                            <th>助学金获得日期</th>
                                            <th>助学金金额</th>
                                        </tr>
                                        <%
                                            List<Money> helpMoney=st2.getMyMoneyInfoByType("助学金",money);
                                            for(int i=0;i<helpMoney.size();i++){
                                        %>
                                        <tr>
                                            <td><%=helpMoney.get(i).getDate()%></td>
                                            <td><%=helpMoney.get(i).getMoneyNum()%></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </table>

                                    <br>
                                    <table class="table-bordered table-4">
                                        <tr >学生贷款记录</tr>
                                        <tr>
                                            <th>学生贷款日期</th>
                                            <th>贷款金额</th>
                                        </tr>
                                        <%
                                            List<Money> helpMoney1=st2.getMyMoneyInfoByType("学生贷款",money);
                                            for(int i=0;i<helpMoney.size();i++){
                                        %>
                                        <tr>
                                            <td><%=helpMoney1.get(i).getDate()%></td>
                                            <td><%=helpMoney1.get(i).getMoneyNum()%></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                            <div id="tab4">
                                <div class="text-content">
                                    <table class="table-bordered table-4">
                                        <tr >实践活动</tr>
                                        <tr>
                                            <th>活动名称</th>
                                            <th>活动类型</th>
                                            <th>活动日期</th>
                                        </tr>
                                        <%
                                            List<Activity> myActivity=st2.getMyActivity(username);
                                            for(int i=0;i<myActivity.size();i++){

                                        %>
                                        <tr>
                                            <td><%=myActivity.get(i).getActivityName()%></td>
                                            <td><%=myActivity.get(i).getActivityType()%></td>
                                            <td><%=myActivity.get(i).getActivityDate()%></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                            <div id="tab5">
                                <div class="text-content" >
                                    <table class="table-bordered table-4">
                                        <tr >奖惩记录</tr>
                                        <tr>
                                            <th>日期</th>
                                            <th>类型</th>
                                            <th>内容</th>
                                        </tr>
                                        <%
                                            List<RewardOrPunish> reward=st2.getRewardOrPunishByType(username,"奖励");
                                            List<RewardOrPunish> punishment=st2.getRewardOrPunishByType(username,"惩罚");
                                            for(int i=0;i<reward.size();i++){
                                        %>
                                        <tr>
                                            <td><%=reward.get(i).getDate()%></td>
                                            <td><%=reward.get(i).getType()%></td>
                                            <td><%=reward.get(i).getName()%></td>
                                        </tr>
                                        <%
                                            } for(int i=0;i<punishment.size();i++){
                                        %>
                                        <tr>
                                            <td><%=punishment.get(i).getDate()%></td>
                                            <td><%=punishment.get(i).getType()%></td>
                                            <td><%=punishment.get(i).getName()%></td>
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
