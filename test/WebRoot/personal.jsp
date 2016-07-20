<%@ page language="java" pageEncoding="UTF-8"%>
<%
String username=(String)session.getAttribute("username");
 %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html"; charset=gb2312" />
  <link href="css/personal.css" rel="stylesheet" type="text/css"/ >
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
       <tr><td></td></tr>
       <tr><td><hr></td></tr>
       <tr><td class=style8 align="center">欢迎您，用户<%=username%></td></tr>
       <tr><td align="center"><a href=index.html><input type="button" value="注销"></a></td></tr>
       <tr><td><hr></td></tr>
       <tr><td></td></tr>
     </table>
     <div class="style9">
       <table width="100%">
         <tr><td class="style10" background="images/jianbian1.png">&nbsp&nbsp个人管理</td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="action/showpreinfor.jsp">&nbsp&nbsp-个人信息管理</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="action/showmygoods.jsp?pagesize=10&pageno=1">&nbsp&nbsp-商品信息管理</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="presonal/newgoods.jsp">&nbsp&nbsp-新增商品管理</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="presonal/unfinishorder.jsp">&nbsp&nbsp-未完订单信息</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="action/showfinishedorder.jsp?pagesize=10&pageno=1">&nbsp&nbsp-已完订单信息</a></td></tr>
         <tr><td></td></tr>
       </table>
     </div>
     <table>
       <tr><tb><hr></tb></tr>
     </table>
     <div class="style9">
       <table width="100%">
         <tr><td class="style10" background="images/jianbian1.png">&nbsp&nbsp给我们留言</td></tr>
         <tr><td>&nbsp<textarea cols="21px"></textarea></td></tr>
         <tr><td align="center"><input type="submit" value="提交"></td></tr>
       </table>
     </div>
     <table>
       <tr><tb><hr></tb></tr>
     </table>
     </td>
     <td>
       <table>
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