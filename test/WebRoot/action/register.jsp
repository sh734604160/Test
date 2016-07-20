<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%
request.setCharacterEncoding("UTF-8");
String username=request.getParameter("username");
String pwd1=request.getParameter("password1");
String pwd2=request.getParameter("password3");
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String sex=request.getParameter("sex");
boolean isValid=false;
String sql="select * from user where username='"+username+"'";
try{
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/second-hand exchange","root","sunhan25");
  Statement stm=con.createStatement();
  ResultSet rs=stm.executeQuery(sql);
  if(!rs.next()){
    sql="INSERT INTO user VALUES('"+username+"','"+pwd1+"','"+pwd2+"','"+name+"','"+sex+"','"+phone+"');";
    stm.executeUpdate(sql);
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
  response.sendRedirect("../index.html");
}else{
  out.print("<content>该用户名已经存在！</content>");
  //response.sendRedirect("../register.html");
}
 %>
