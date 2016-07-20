<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%
response.setContentType("text/xml");
response.setHeader("Cache-Control", "no-cache");
String username=request.getParameter("username");
boolean isValid=false;
String sql="select username from user where username='"+username+"'";
  try{
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/second-hand exchange","root","sunhan25");
  Statement stm=con.createStatement();
  ResultSet rs=stm.executeQuery(sql);
  if(rs.next()){
    isValid=true;
  }
  rs.close();
  stm.close();
  con.close();
  }catch(Exception e){
    e.printStackTrace();
    out.print(e);
  }
  if(isValid){
    out.print("<content>该用户名已经存在！</content>");
  }else{
    out.print("<content>OK</content>");
  }
%>