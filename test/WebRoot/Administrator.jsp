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
      <span class="style5">&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Administrator.jsp">管理中心</a></span>
   </td></tr> 
   <tr><td class="style6">
     <table class="style7">
       <tr><td></td></tr>
       <tr><td><hr></td></tr>
       <tr><td class=style8 align="center">欢迎您，管理员<%=username%></td></tr>
       <tr><td align="center"><a href=index.html><input type="button" value="注销"></a></td></tr>
       <tr><td><hr></td></tr>
       <tr><td></td></tr>
     </table>
     <div class="style9">
       <table width="100%">
         <tr><td class="style10" background="images/jianbian1.png">&nbsp&nbsp个人管理</td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="action/showuser.jsp?pagesize=10&pageno=1">&nbsp&nbsp-用户信息管理</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="">&nbsp&nbsp-商品类别管理</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="action/showorder.jsp?pagesize=10&pageno=1">&nbsp&nbsp-查看订单信息</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="">&nbsp&nbsp-查看用户留言</a></td></tr>
         <tr><td></td></tr>
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