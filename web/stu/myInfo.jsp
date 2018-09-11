<%@ page import="org.xh.AdminTest.myMethod.studentUserImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.xh.AdminTest.vo.*" %>
<%@ page import="org.xh.AdminTest.vo.*" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/22
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username=request.getParameter("username");
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的信息</title>
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
        <li><a href="#" >主页</a></li>
        <li><a href="#">学校新闻</a></li>
        <li><a href="#">请联系我们</a></li>
    </ul>
</div>
<table class="table-bordered">
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
<br>
<div id="div2.2">

    <table class="table-bordered">
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
<br>
<div id="div2.3">
    <table class="table-bordered">
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
</div>
<br>
<div id="div2.4">
    <br>
    <table class="table-bordered">
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
<br>
<div id="div2.5">
    <br>
    <table class="table-bordered">
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
</div>


<div id="div2.56">
    <br>
    <table class="table-bordered">
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



<br>
<div id="div2.55">
    <br>
    <table class="table-bordered">
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
<div id="div2.6">
    <a href="stufunction.jsp?username=<%=username%>">返回</a>
</div>
</body>
</html>
