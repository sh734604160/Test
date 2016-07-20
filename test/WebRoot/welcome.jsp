<%@ page language="java" pageEncoding="UTF-8"%>
<%
String username=(String)session.getAttribute("username");
 %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html"; charset=gb2312" />
  <link href="css/welcomecss.css" rel="stylesheet" type="text/css"/ >
  <title>西电二手物品交易平台</title>
</head>
<body>
<div>
<table class="style1">
  <tr><td colspan="2" height="100">
    <table  background="images/biaotou.png" class="style2">
      <tr><td class="style3">校园二手物品交易平台</td></tr>
      </table>
      </td>
      </tr>
   <tr class="style4"><td colspan="2">
      <span class="style5">&nbsp&nbsp&nbsp&nbsp&nbsp<a href="welcome.jsp">首页</a>&nbsp|&nbsp<a href="personal.jsp">个人中心</a></span>
   </td></tr>  
   <tr><td class="style6">
     <table class="style7">
       <tr><td><hr></td></tr>
       <tr><td class=style8 align="center">欢迎您，用户<%=username%></td></tr>
       <tr><td align="center"><a href=index.html><input type="button" value="注销"></a></td></tr>
       <tr><td><hr></td></tr>
       <tr><td></td></tr>
     </table>
     <div class="style9">
       <table width="100%">
         <tr><td class="style10" background="images/jianbian1.png">&nbsp&nbsp商品类别</td></tr>
         <tr><td class="style11"><a href="action/ele-goods.jsp?type=001&pagesize=10&pageno=1">&nbsp&nbsp-电子数码类</a></td></tr>
         <tr><td class="style11"><a href="action/ele-goods.jsp?type=002&pagesize=10&pageno=1">&nbsp&nbsp-图书小说类</a></td></tr>
         <tr><td class="style11"><a href="action/ele-goods.jsp?type=003&pagesize=10&pageno=1">&nbsp&nbsp-学习用品类</a></td></tr>
         <tr><td class="style11"><a href="action/ele-goods.jsp?type=004&pagesize=10&pageno=1">&nbsp&nbsp-鞋服配饰类</a></td></tr>
         <tr><td class="style11"><a href="action/ele-goods.jsp?type=005&pagesize=10&pageno=1">&nbsp&nbsp-日用百货类</a></td></tr>
         <tr><td class="style11"><a href="action/ele-goods.jsp?type=006&pagesize=10&pageno=1">&nbsp&nbsp-户外运动类</a></td></tr>
         <tr><td class="style11"><a href="action/ele-goods.jsp?type=007&pagesize=10&pageno=1">&nbsp&nbsp-零食小吃类</a></td></tr>
       </table>
     </div>
     <div class="style9">
     <form name="message" action="action/message.jsp" method="post">
       <table width="100%">
         <tr><td class="style10" background="images/jianbian1.png">&nbsp&nbsp给我们留言</td></tr>
         <tr><td>&nbsp<textarea name="message" cols="21px"></textarea></td></tr>
         <tr><td align="center"><input type="submit" value="提交"></td></tr>
       </table>
       </form>
     </div>
     </td>
     <td>
       <table background="#666666">
       <tr><tb><img class="style12" src="images/welcome.jpg"></tb></tr>
       </table>
     </td>
   </tr> 
   <tr>
     <td colspan="2" align="center">
     <hr>
     <font face="仿宋">版权所有</font>
     </td>
   </tr>
</table>
</div>
</body>
</html>