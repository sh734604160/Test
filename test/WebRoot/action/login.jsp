<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%
String name=request.getParameter("username");
String pwd=request.getParameter("password");
String type=request.getParameter("type");
boolean isAdministrator=false;
boolean isValid=false;
if(type.equals("Admintrator")&&name.equals("Administrator")&&pwd.equals("123456")){
  isAdministrator=true;
}
if(isAdministrator){
  session.setAttribute("username", name);
  response.sendRedirect("../Administrator.jsp");
}else{
String sql="select * from user where username='"+name+"' and password='"+pwd+"'";
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
}finally{
}

if(isValid){
  session.setAttribute("username", name);
  response.sendRedirect("../welcome.jsp");
}else{
  response.sendRedirect("../index.html");
}
}
%>
