<%@ page import="org.zt.webpractice.dao.impl.TeacherFunctionImpl" %>
<%@ page import="org.zt.webpractice.factory.Factory" %>
<%@ page import="java.util.List" %>
<%@ page import="org.zt.webpractice.vo.*" %>
<%@page pageEncoding="utf-8" %>
<!DOCTYPE html><%
    request.setCharacterEncoding("UTF-8");
    String account = (String)session.getAttribute("username");
    String course_name = request.getParameter("course_name");
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <!--
    Tinker Template
    http://www.templatemo.com/tm-506-tinker
    -->
    <title>Tinker CSS Template</title>
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
                <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse"
                        data-target="#main-nav">
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
<div style="height:400px">
    <section id="about" class="page-section">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <p><font size="6">新闻 </font>
                        <p>
                            <a href="http://www.news.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65475">
                        <P>2018年学校本科深造率超过2/3 </P> </a>
                        <a href="http://www.news.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65493">
                            <P>学校与省医院共商医学院未来发展 </P></a>
                        <a href="http://www.news.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65486">
                            <P>学校举办2018年中青年干部培训班 </P></a>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <p><font size="6">&nbsp;</font></p>
                        <a href="http://www.news.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65506">
                            <P>2018EMC2全国博士生学术论坛我校召开 </P></a>
                        <a href="http://www.news.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65504">
                            <P>“临床药学实践与创新”全国研究生暑期学校</P></a>
                        <a href="http://www.news.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65479">
                            <P>IEEE Fellow施巍松教授做客名师讲堂</P></a>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <p><font size="6">公告</font></p>
                        <a href="http://www.new1.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65508">
                            <P>2018年秋季校园招聘邀请函 </P></a>
                        <a href="http://www.new1.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65528">
                            <P>电子科技博物馆暑期开放公告 </P></a>
                        <a href="http://www.new1.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65494">
                            <P>校医院沙河院区门诊修缮公告</P></a>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <p><font size="6">&nbsp;</font></p>
                        <a href="http://www.new1.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65498">
                            <P>做好2018年学校暑假安全工作的通知</P></a>
                        <a href="http://www.new1.uestc.edu.cn/?n=UestcNews.Front.Document.ArticlePage&Id=65520">
                            <P>暑假期间体育场地（馆）开放安排</P></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>


<div class="tabs-content" id="blog">
    <div class="container">
        <div class="row">
            <div class="wrapper" style="width:100%">
                <div class="col-md-4" style="width:15%">
                    <div class="section-heading">
                        <h4>功能栏</h4>
                        <ul class="tabs clearfix" data-tabgroup="first-tab-group">
                            <li><a href="#tab1" class="active">点名</a></li>
                            <li><a href="#tab2">成绩</a></li>
                            <li><a href="#tab3">课表</a></li>
                            <li><a href="#tab4">考勤</a></li>
                            <li><a href="#tab5">个人</a></li>
                            <li><a href="#tab6">监考</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-8" style="width:80% ;height:100%">
                    <section id="first-tab-group" class="tabgroup" style="height:100px">
                        <div id="tab1">
                            <div class="text-content"
                                 style="height:520px ;background-color:rgba(0,0,0,0.5);width:950px">
                                <%
                                    TeacherFunctionImpl teacherFunction = new TeacherFunctionImpl();
                                    request.setCharacterEncoding("utf8");
                                    String s = request.getParameter("num");
                                    System.out.println("s:"+s);
                                    String size = request.getParameter("size");


                                    System.out.println("111111"+course_name);

                                    String teacher_id = request.getParameter("teacher_id");
                                    request.setCharacterEncoding("UTF-8");
                                    if (size != null) {
                                        int length = Integer.valueOf(size);
                                        int k;
                                        if(length>15)
                                            k=15;
                                        else
                                            k=length;
                                        for (int i = 0; i < k; i++) {
                                            String stu_id = request.getParameter("Stu_id" + i);
                                            String stu_name = request.getParameter("Stu_name" + i);
                                            String isArrive = request.getParameter("CheckWork" + i);
                                            if (isArrive.equals("notArrive")) {
                                                System.out.println("666666"+course_name);
                                                teacherFunction.postCheckWork(stu_id, course_name, stu_name, teacher_id);
                                            }
                                        }
                                    }

                                    System.out.println("account:"+account);
                                    //String account = "t0";
                                    String year = "2016-2017";
                                    String semester = "1";
                                    teacherFunction.getClassNameAndCourseId(account, year, semester);
                                    List<String> list = teacherFunction.getNameList();
                                    System.out.println(list.size());
                                    int selected = 0;
                                    if (s == null) {
                                        s = list.get(selected);
                                    } else {
                                        for (int i = 0; i < list.size(); i++) {
                                            if (s.equals(list.get(i))) selected = i;
                                        }
                                    }
                                    System.out.println("s1-------" + s);
                                    System.out.println("selected1----" + selected);
                                    List<StudentMark> markList = teacherFunction.getStudentMarks(teacherFunction.getMap().get(s));
                                    String courseName = teacherFunction.getCourseNameById(teacherFunction.getCourseId(list.get(0)));
                                    System.out.println("sada"+courseName);
                                %>
                                <script>
                                    function Change() {
                                        var sel = document.getElementById("sel");
                                        var x = sel.options[sel.selectedIndex].text;
                                        document.getElementById("val").value = x;
                                        return true;
                                    }
                                </script>
                                <div style="width:100%">
                                    <div style="width:10%;float:left">
                                        <select id="sel" class="select-1">
                                            <%
                                                for (int i = 0; i < list.size(); i++) {
                                                    if (i == selected) {
                                            %>
                                            <option selected="selected">
                                                &nbsp;&nbsp; &nbsp;&nbsp;<%=list.get(i)%>&nbsp;&nbsp;&nbsp;&nbsp;
                                            </option>
                                            <%
                                            } else {%>
                                            <option>
                                                &nbsp;&nbsp; &nbsp;&nbsp;<%=list.get(i)%>&nbsp;&nbsp;&nbsp;&nbsp;
                                            </option>
                                            <%
                                                    }
                                                }
                                            %>
                                        </select>
                                    </div>
                                    <div style="width:90%;float:right">
                                        <form action="tea_1.jsp" method="POST" onsubmit="Change()">
                                            <input id="val" name="num" type="hidden" value="">
                                            <input type="submit" value="提交" style="background:black">
                                        </form>
                                    </div>
                                </div>
                                <script>
                                    function Alert() {
                                        alert("提交成功");
                                    }
                                </script>
                                <form id="checkList" action="tea_1.jsp" method="POST" onsubmit="Alert()">
                                    <table class="table-bordered table-1">
                                        <caption style="color: white;text-align: center;font-size: 20px">考勤表</caption>
                                        <tr>
                                            <td>姓名</td>
                                            <td>学号</td>
                                            <td>出勤</td>
                                            <td>缺勤</td>
                                        </tr>
                                        <%
                                            int j;
                                            if (markList.size()>15){
                                                j=15;
                                            }else {
                                                j=markList.size();
                                            }
                                            for (int i = 0; i < j; i++) {
                                        %>
                                        <tr>
                                            <td><%=markList.get(i).getStudent().getName()%>
                                            </td>
                                            <td><%=markList.get(i).getStudent().getStudentId()%>
                                            </td>
                                            <td><input type="radio" name="CheckWork<%=i%>" value="arrive" checked>
                                            </td>
                                            <td><input type="radio" name="CheckWork<%=i%>" value="notArrive"></td>
                                            <input type="hidden" name="Stu_name<%=i%>"
                                                   value="<%=markList.get(i).getStudent().getName()%>">
                                            <input type="hidden" name="Stu_id<%=i%>"
                                                   value="<%=markList.get(i).getStudent().getStudentId()%>">
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </table>
                                    <input type="hidden" name="teacher_id" value="<%=account%>">
                                    <input type="hidden" name="course_name" value="<%=courseName%>">
                                    <input type="hidden" name="size" value="<%=markList.size()%>">
                                    <input type="submit" class="btn btn-info" value="提交" style="margin-left:450px">
                                </form>
                            </div>
                        </div>
                        <div id="tab2">
                            <div class="text-content  "
                                 style="height:520px ;background-color:rgba(0,0,0,0.5);width:950px">
                                <div classs="input-group mb-3">
                                    <%
                                        year = "2016-2017";
                                        semester = "1";
                                        request.setCharacterEncoding("utf8");
                                        String s2 = request.getParameter("num2");
                                        teacherFunction = new TeacherFunctionImpl();
                                        teacherFunction.getClassNameAndCourseId(account, year, semester);
                                        List<String> list2 = teacherFunction.getNameList();
                                        int selected2 = 0;
                                        System.out.println(s2);
                                        if (s2 != null) {
                                            for (int i = 0; i < list.size(); i++) {
                                                if (list.get(i).equals(s2)) {
                                                    selected2 = i;
                                                }
                                            }
                                        } else {
                                            s2 = list.get(selected2);
                                        }
                                        System.out.println(selected2);
                                        List<StudentMark> markList2 = teacherFunction.getStudentMarks(teacherFunction.getMap().get(s2));
                                    %>
                                    <script>
                                        function Change2() {
                                            var sel = document.getElementById("sel2");
                                            var x = sel.options[sel.selectedIndex].text;
                                            document.getElementById("val").value = x;
                                            alert(document.getElementById("val").value);
                                            return true;
                                        }
                                    </script>
                                    <!--  <select id="sel2" class="select-1">
                                        <%
                                            for (int i = 0; i < teacherFunction.getNameList().size(); i++) {
                                                if (selected2 == i) {
                                        %>
                                        <option selected="selected">
                                            <%=list2.get(i)%>
                                        </option>
                                        <%
                                        } else {
                                        %>
                                        <option>
                                            <%=list2.get(i)%>
                                        </option>
                                        <%
                                                }
                                            }
                                        %>
                                    </select>
                                    <form action="tea_1.jsp" method="POST" onsubmit="Change2()">
                                        <input id="val2" type="hidden" value="" name="num2">
                                        <button type="button" style="color:black"><input type="submit" value="提交">
                                        </button>
                                    </form>-->
                                </div>
                                <div>
                                    <table class="table-bordered table-1">
                                        <caption style="color: white;text-align: center;font-size: 20px">成绩表</caption>
                                        <tr>
                                            <td>姓名</td>
                                            <td>学号</td>
                                            <td>成绩</td>
                                        </tr>
                                        <%
                                            if (markList != null) {
                                                for (int i=0;i<15;i++){
                                        %>
                                        <tr>
                                            <td><%=markList.get(i).getStudent().getName()%>
                                            </td>
                                            <td><%=markList.get(i).getStudent().getStudentId()%>
                                            </td>
                                            <td><%=markList.get(i).getScore()%>
                                            </td>
                                        </tr>
                                        <%
                                                }
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div id="tab3">
                            <div class="text-content "
                                 style="height:520px ;background-color:rgba(0,0,0,0.5);width:950px">
                                <div id="div4.1">
                                    <%
                                        year = "2016-2017";
                                        semester = "1";
                                        teacherFunction = new TeacherFunctionImpl();
                                        Factory factory = teacherFunction.getFactory();
                                        List<Course> courseList = teacherFunction.getCourseListByAccount(account, year, semester);
                                    %>
                                    <table class="table-bordered table-1">
                                        <caption style="color: white;text-align: center;font-size: 20px">课程表</caption>
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
                                            <th><%=factory.getCourseInfo(1, 1, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(1, 2, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(1, 3, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(1, 4, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(1, 5, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(1, 6, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(1, 7, courseList)%>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>2</th>
                                            <th><%=factory.getCourseInfo(1, 1, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(1, 2, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(1, 3, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(1, 4, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(1, 5, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(1, 6, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(1, 7, courseList)%>
                                            </th>
                                        </tr>

                                        <tr>
                                            <th>3</th>
                                            <th><%=factory.getCourseInfo(2, 1, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(2, 2, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(2, 3, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(2, 4, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(2, 5, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(2, 6, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(2, 7, courseList)%>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>4</th>
                                            <th><%=factory.getCourseInfo(2, 1, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(2, 2, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(2, 3, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(2, 4, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(2, 5, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(2, 6, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(2, 7, courseList)%>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>5</th>
                                            <th><%=factory.getCourseInfo(3, 1, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(3, 2, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(3, 3, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(3, 4, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(3, 5, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(3, 6, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(3, 7, courseList)%>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>6</th>
                                            <th><%=factory.getCourseInfo(3, 1, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(3, 2, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(3, 3, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(3, 4, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(3, 5, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(3, 6, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(3, 7, courseList)%>
                                            </th>
                                        </tr>

                                        <tr>
                                            <th>7</th>
                                            <th><%=factory.getCourseInfo(4, 1, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(4, 2, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(4, 3, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(4, 4, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(4, 5, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(4, 6, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(4, 7, courseList)%>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>8</th>
                                            <th><%=factory.getCourseInfo(4, 1, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(4, 2, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(4, 3, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(4, 4, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(4, 5, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(4, 6, courseList)%>
                                            </th>
                                            <th><%=factory.getCourseInfo(4, 7, courseList)%>
                                            </th>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div id="tab4">
                            <div class="text-content"
                                 style="height:520px ;background-color:rgba(0,0,0,0.5);width:950px">
                                <%
                                    teacherFunction = new TeacherFunctionImpl();
                                    List<CheckOnWork> checkOnWorkList = teacherFunction.getCheckOnWork(account);
                                %>
                                <table class="table-bordered table-1">
                                    <caption style="color: white;text-align: center;font-size: 20px">缺勤名单</caption>
                                    <tr>
                                        <td>姓名</td>
                                        <td>学号</td>
                                        <td>日期</td>
                                        <td>课程名称</td>
                                    </tr>
                                    <%
                                        for (CheckOnWork checkOnWork : checkOnWorkList) {
                                    %>
                                    <tr>
                                        <td><%=checkOnWork.getStuName()%>
                                        </td>
                                        <td><%=checkOnWork.getStuId()%>
                                        </td>
                                        <td><%=checkOnWork.getDateTime()%>
                                        </td>
                                        <td><%=checkOnWork.getCourseName()%>
                                        </td>
                                    </tr>
                                    <%
                                        }%>

                                </table>
                            </div>
                        </div>
                        <div id="tab5">
                            <div class="text-content "
                                 style="height:530px ;background-color:rgba(0,0,0,0.5);width:950px">
                                <%
                                    teacherFunction = new TeacherFunctionImpl();
                                    account = "t0";
                                    Teacher teacher = teacherFunction.getInfoByAccount(account);
                                    String title = teacher.getTitle();
                                    String name = teacher.getName();
                                    int age = teacher.getAge();
                                    float cardRemain = teacher.getCardRemain();
                                    String mail = teacher.getMail();
                                    int salary = teacher.getSalary();
                                    String sex = teacher.getSex();
                                %>
                                <table class="table-hover" border-radius:5px;overflow:hidden>
                                    <tr> &nbsp;&nbsp;姓名<p>&nbsp;&nbsp;<%=name%>
                                    </p></tr>
                                    <tr> &nbsp;&nbsp;职工号<p>&nbsp;&nbsp;<%=account%>
                                    </p></tr>
                                    <tr> &nbsp;&nbsp;职称<p>&nbsp;&nbsp;<%=title%>
                                    </p></tr>
                                    <tr> &nbsp;&nbsp;年龄<p>&nbsp;&nbsp;<%=age%>
                                    </p></tr>
                                    <tr> &nbsp;&nbsp;性别<p>&nbsp;&nbsp;<%=sex%>
                                    </p></tr>
                                    <tr> &nbsp;&nbsp;一卡通余额<p>&nbsp;&nbsp;<%=cardRemain%>
                                    </p></tr>
                                    <tr> &nbsp;&nbsp;薪资<p>&nbsp;&nbsp;<%=salary%>
                                    </p></tr>
                                    <tr> &nbsp;&nbsp;电子邮箱<p>&nbsp;&nbsp;<%=mail%>
                                    </p></tr>
                                </table>
                            </div>
                        </div>
                        <div id="tab6">
                            <div class="text-content "
                                 style="height:520px ;background-color:rgba(0,0,0,0.5);width:950px">
                                <%
                                    teacherFunction = new TeacherFunctionImpl();
                                    List<SpyInfo> spyInfoList = teacherFunction.getSpyInfo(account);
                                %>
                                <table class="table-bordered table-1">
                                    <caption style="color: white;text-align: center;font-size: 20px">监考安排</caption>
                                    <tr>
                                        <td>课程名称</td>
                                        <td>时间</td>
                                        <td>地点</td>
                                    </tr>
                                    <%
                                        for (int i = 0; i < spyInfoList.size(); i++) {
                                    %>
                                    <tr>
                                        <td><%=spyInfoList.get(i).getExamName()%>
                                        </td>
                                        <td><%=spyInfoList.get(i).getDataTime().toString()%>
                                        </td>
                                        <td><%=spyInfoList.get(i).getPlace()%>
                                        </td>
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
                        <li><em>Group</em>: 快乐码农</li>
                        <li><em>Email</em>: uestc@klmn.com</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-2 col-sm-12">
                <div class="connect-us">
                    <h4>Get Social with us</h4>
                    <ul>
                        <li><a href="https://www.facebook.com/templatemo" target="_parent"><i
                                class="fa fa-facebook"></i></a></li>
                        <li><a href="https://www.google.com/+templatemo" target="_blank"><i
                                class="fa fa-twitter"></i></a></li>
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
