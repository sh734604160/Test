<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%
request.setCharacterEncoding("UTF-8");
String goodsno=(String)request.getParameter("goodsno");
System.out.println(goodsno);
int no=Integer.parseInt(goodsno);
String topage="showmygoods.jsp?pagesize=10&pageno=1";
String sql="delete from goods where goodsno="+no+"";
try{
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/second-hand exchange","root","sunhan25");
  Statement stm=con.createStatement();
  stm.executeUpdate(sql);
  stm.close();
  con.close(); 
}catch(Exception e){
  e.printStackTrace();
  out.print(e);
}finally{
}

 %>
<jsp:forward page="<%=topage %>"></jsp:forward>