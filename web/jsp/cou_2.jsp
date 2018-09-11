<%@ page import="org.yh.dbconnect.dao.MisscourseDao" %>
<%@ page import="org.yh.dbconnect.factory.Factory" %>
<%@ page import="java.util.List" %>
<%@ page import="org.yh.dbconnect.vo.Misscourse" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.yh.dbconnect.vo.Misscourse" %>
<%@ page import="java.util.List" %>
<%@ page import="org.yh.dbconnect.factory.Factory" %>
<%@ page import="org.yh.dbconnect.vo.Failexam" %>
<%@ page import="org.yh.dbconnect.dao.FailexamDao" %>
<%
    request.setCharacterEncoding("UTF-8");
    String teacher_id=request.getParameter("teacher_id");
    String stu_id=request.getParameter("stu_id");
    String stu_name=request.getParameter("stu_name");
    String course_name=request.getParameter("course_name");
    String check_time=request.getParameter("check_time");
    MisscourseDao misscourseDao = Factory.getMisscourseDao();
    boolean flag = misscourseDao.insertion(teacher_id,stu_id,stu_name,course_name,check_time);
%>
<%
    misscourseDao= Factory.getMisscourseDao();
    List<Misscourse> list_miss=misscourseDao.myFind();
    int currPage = 1;
    String currpage = request.getParameter("currpage");
    if (currpage != null && !"".equals(currpage)){
        currPage = Integer.parseInt(currpage);
    }
    int sum = list_miss.size();
    int countPre = 10;
    int pageSum = (sum%countPre==0) ? sum/countPre : sum/countPre+1;
    int start = (currPage-1)*countPre;
    int end = currPage*countPre;
    if (currPage>countPre-1){
        end = list_miss.size();
    }
%>
<%
    String stu_id1=request.getParameter("stu_id1");
    String course_name1=request.getParameter("course_name1");
    String check_time1=request.getParameter("check_time1");
    boolean flag1=misscourseDao.delete(stu_id1,course_name1,check_time1);
%>
<%
    FailexamDao failexamDao= Factory.getFailexamDao();
    List<Failexam> list_fail=failexamDao.find();


    int currPage1 = 1;
    String currpage1 = request.getParameter("currpage1");
    if (currpage1 != null && !"".equals(currpage1)){
        currPage1 = Integer.parseInt(currpage1);
    }
    int sum1 = list_fail.size();
    int countPre1 = 10;
    int pageSum1 = (sum1%countPre1==0) ? sum1/countPre1 : sum1/countPre1+1;
    int start1 = (currPage1-1)*countPre1;
    int end1 = currPage1*countPre1;
    if (currPage1>countPre1-1){
        end1 = list_fail.size();
    }
    String safeCode=(String)session.getAttribute("username");
    boolean flag11=true;

    if(safeCode==null)
        flag11=false;
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
    <a id="a1" href="login1.html"></a>
    <script language="JavaScript">
        if(!<%=flag11%>)
            document.getElementById("a1").click();
    </script>
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
                        <li><a href="#" class="scroll-link" data-id="contact-us">退出登入</a></li>
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
                            <a href="cou_4.jsp" class="scroll-link" data-id="portfolio">进入</a>
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
                            <h4>功能栏</h4>
                            <div class="line-dec"></div>
                            <ul class="tabs clearfix" data-tabgroup="first-tab-group" >
                                <li><a href="#tab1" class="active">缺勤统计</a></li>
                                <li><a href="#tab2">挂科统计</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8"style="width:75%;"  >
                        <section id="first-tab-group" class="tabgroup" style="height:100%" >
                            <div id="tab1">
                                <div class="text-content" style="" >
                                    <div>
                                        <table class="table-bordered table-3">
                                            <tr><h3>缺课</h3></tr>
                                            <tr>
                                                <td>学生</td>
                                                <td>学号</td>
                                                <td>教师职工号</td>
                                                <td> 缺课课名</td>
                                                <td>日期</td>
                                            </tr>
                                            <%for(int i=start;i<end;i++){%>
                                            <tr>
                                                <td><%=list_miss.get(i).getStu_name()%></td>
                                                <td><%=list_miss.get(i).getStu_id()%></td>
                                                <td><%=list_miss.get(i).getTeacher_id()%></td>
                                                <td><%=list_miss.get(i).getCourse_name()%></td>
                                                <td><%=list_miss.get(i).getCheck_time()%></td>
                                            </tr>
                                            <%}%>
                                        </table>
                                        <div >
                                            总共有<%=pageSum%>页,当前
                                            <select id="selectPage" onchange="selectChange()">
                                                <%for (int i=1;i<=pageSum;i++){%>
                                                <%if(i==currPage){%>
                                                <option style="background-color:black;color: white" selected value="<%=i%>"><%=i%></option>
                                                <%}else{%>
                                                <option style="background-color:black;color: white"value="<%=i%>"><%=i%></option>
                                                <%}}%>
                                            </select>页
                                            <form name="form1" action="cou_2.jsp" method="post">
                                                <%if (currPage!=1){%>
                                                <a href="cou_2.jsp?currpage=<%=currPage-1%>">上一页</a>&nbsp;&nbsp;
                                                <%}%>
                                                <%if (currPage!=pageSum){%>
                                                <a href="cou_2.jsp?currpage=<%=currPage+1%>">下一页</a>
                                                <%}%>
                                                <input type="hidden" name="currpage"/>
                                            </form>
                                            <script>
                                                function selectChange(){
                                                    var value = document.getElementById("selectPage").value;
                                                    location.href = "cou_2.jsp?currpage="+value;
                                                }
                                            </script>
                                        </div>
                                        <div style="width:40%">
                                            <form action="cou_2.jsp" method="post">
                                                教师职工号<input style="color: black" type="text"name="teacher_id"><br>
                                                学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号<input style="color: black" type="text"name="stu_id"><br>
                                                姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名<input style="color: black"type="text"name="stu_name"><br>
                                                课&nbsp;&nbsp;&nbsp;&nbsp;程&nbsp;&nbsp;&nbsp;号<input style="color: black"type="text"name="course_name"><br>
                                                日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;期<input style="color: black"type="text"name="check_time"><br>
                                                <input type="submit"value="提交" style="background:black;font-color:white" onclick="add()"/>
                                            </form>
                                            <form action="cou_2.jsp" method="post">
                                                学号<input type="text"name="stu_id1"style="width:20%;color: black">
                                                课程名<input type="text"name="course_name1"style="width:20%;color: black">
                                                日期<input type="text"name="check_time1"style="width:20%;color: black">
                                                <input type="submit" value="删除" onclick="del()" style="background:black;font-color:white">
                                            </form>
                                        </div>
                                        <script>
                                            function add() {
                                                alert("添加成功！");
                                            }
                                            function del() {
                                                alert("删除成功");
                                            }
                                        </script>
                                    </div>
                                    <!--<span><a href="#">Digital Marketing</a> / <a href="#">John</a> / <a href="#">22 September 2017</a></span>
                                    <p>Sed sed elementum diam. Nunc vehicula leo et ante dapibus tincidunt. Praesent fringilla mauris gravida enim laoreet, eu cursus erat dignissim. Praesent lacinia, nisi in suscipit commodo, risus elit viverra neque, ut pretium eros turpis vel enim. Maecenas vitae lacus purus.</p>-->
                                </div>
                            </div>
                            <div id="tab2">
                                <div class=" text-content " >
                                    <p> 挂科统计表</p>
                                    <div>
                                        <table class="table-bordered table-2">
                                            <tr>挂科</tr>
                                            <tr>
                                                <td>学号</td>
                                                <td>学生</td>
                                                <td>班级</td>
                                                <td>挂科科目</td>
                                                <td>学年</td>
                                                <td>学期</td>
                                                <td>分数</td>
                                                <td>学分</td>
                                            </tr>
                                            <%
                                                for(int i=start;i<end;i++){
                                            %>
                                            <tr>
                                                <td><%=list_fail.get(i).getStu_id()%></td>
                                                <td><%=list_fail.get(i).getStu_name()%></td>
                                                <td><%=list_fail.get(i).getClass_name()%></td>
                                                <td><%=list_fail.get(i).getCourse_name()%></td>
                                                <td><%=list_fail.get(i).getYear()%></td>
                                                <td><%=list_fail.get(i).getSemester()%></td>
                                                <td><%=list_fail.get(i).getGarde_score()%></td>
                                                <td><%=list_fail.get(i).getGrade_credit()%></td>
                                            </tr>
                                            <%
                                                }
                                            %>
                                        </table>
                                    </div>
                                    <div>
                                        总共有<%=pageSum1%>页,当前
                                        <select id="selectPage"onchange="selectChange()">
                                            <%for (int i=1;i<=pageSum1;i++){%>
                                            <%if(i==currPage1){%>
                                            <option  selected value="<%=i%>"><%=i%></option>
                                            <%}else{%>
                                            <option  value="<%=i%>"><%=i%></option>
                                            <%}}%>
                                        </select>页
                                        <form name="form1" action="cou_2.jsp" method="post">
                                            <%if (currPage1!=1){%>
                                            <a href="cou_2.jsp?currpage=<%=currPage1-1%>">上一页</a>&nbsp;&nbsp;
                                            <%}%>
                                            <%if (currPage1!=pageSum1){%>
                                            <a href="cou_2.jsp?currpage1=<%=currPage1+1%>">下一页</a>
                                            <%}%>
                                            <input type="hidden" name="currpage1"/>
                                        </form>
                                        <script>
                                            function selectChange(){
                                                var value = document.getElementById("selectPage").value;
                                                location.href = "cou_2.jsp?currpage1="+value;
                                            }
                                        </script>
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
                        <p> <span> Information</span>Portal Platform</p>
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
