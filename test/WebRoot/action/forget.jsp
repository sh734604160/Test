<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%
String name=request.getParameter("username");
String newpwd=request.getParameter("password1");
String sepwd=request.getParameter("password3");
System.out.print(name);
boolean isValid=false;
String sql="select * from user where username='"+name+"' and secondary='"+sepwd+"'";
try{
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/second-hand exchange","root","sunhan25");
  Statement stm=con.createStatement();
  ResultSet rs=stm.executeQuery(sql);
  if(rs.next()){
    isValid=true;
    sql="UPDATE user set password ='"+newpwd+"' where username='"+name+"'";
    stm.executeUpdate(sql);
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
  response.sendRedirect("../index.html");
}else{
  response.getWriter().write("<script language='javascript'> alert('输入二级密码错误！');window.location.href='../forget.html';</script>");
}
%>