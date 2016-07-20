<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page import="java.util.*" %>
<%
request.setCharacterEncoding("UTF-8");
String username=(String)session.getAttribute("username");
String goodsno=(String)request.getParameter("goodsno");
String goodsname="";
String introduce="";
String image="";
String name="";
String phone="";
String sql="select * from goods where goodsno="+goodsno;
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/second-hand exchange","root","sunhan25");
Statement stm=con.createStatement();
ResultSet rs=stm.executeQuery(sql);
if(rs.next()){
  goodsname=rs.getString(2);
  introduce=rs.getString(4);
  image=rs.getString(5);
  name=rs.getString(6);
}
rs.close();
sql="select phone from user where username='"+name+"'";
ResultSet rs1=stm.executeQuery(sql);
if(rs1.next()){
  phone=rs1.getString(1);
}
rs1.close();
stm.close();
con.close();
 %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html"; charset=gb2312" />
  <link href="../css/electronic-product.css" rel="stylesheet" type="text/css"/>
  <title>西电二手物品交易平台</title>
</head>
<body>
<div>
<table class="style1">
  <tr><td colspan="2" height="100">
    <table  background="../images/biaotou.png" class="style2">
      <tr><td class="style3">校园二手物品交易平台</td></tr>
      </table>
      </td>
      </tr>
   <tr class="style4"><td colspan="2">
      <span class="style5">&nbsp&nbsp&nbsp&nbsp&nbsp<a href="../welcome.jsp">首页</a>&nbsp|&nbsp<a href="../personal.jsp">个人中心</a></span>
   </td></tr>  
   <tr><td class="style6">
     <table class="style7">
       <tr><td><hr></td></tr>
       <tr><td class=style8 align="center">欢迎您，用户<%=username%></td></tr>
       <tr><td align="center"><a href=../index.html><input type="button" value="注销"></a></td></tr>
       <tr><td><hr></td></tr>
       <tr><td></td></tr>
     </table>
     <div class="style9">
       <table width="100%">
         <tr><td class="style10" background="../images/jianbian1.png">&nbsp&nbsp商品类别</td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=001&pagesize=10&pageno=1">&nbsp&nbsp-电子数码类</a></td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=002&pagesize=10&pageno=1">&nbsp&nbsp-图书小说类</a></td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=003&pagesize=10&pageno=1">&nbsp&nbsp-学习用品类</a></td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=004&pagesize=10&pageno=1">&nbsp&nbsp-鞋服配饰类</a></td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=005&pagesize=10&pageno=1">&nbsp&nbsp-日用百货类</a></td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=006&pagesize=10&pageno=1">&nbsp&nbsp-户外运动类</a></td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=007&pagesize=10&pageno=1">&nbsp&nbsp-零食小吃类</a></td></tr>
       </table>
     </div>
     <div class="style9">
       <table width="100%">
         <tr><td class="style10" background="../images/jianbian1.png">&nbsp&nbsp给我们留言</td></tr>
         <tr><td>&nbsp<textarea cols="21px"></textarea></td></tr>
         <tr><td align="center"><input type="submit" value="提交"></td></tr>
       </table>
     </div>
     </td>
     <td>
       <table class="mygoodstable">
       <tr><td colspan="2" align="center"><img src="../<%=image %>"></td></tr>
       <tr><td colspan="2" align="center"><%=goodsname %></td></tr>
       <tr><td colspan="2" align="center">商品介绍：<%=introduce %></td></tr>
       <tr><td align="right">卖家为：<%=name %></td><td align="left">联系方式：<%=phone %></td></tr>
       <tr><td colspan="2" align="center"><a href="addorder.jsp?goodsno=<%=goodsno %>&name=<%=name %>"><input type="button" value="购买"></a></td></tr>
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