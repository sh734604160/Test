<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%
request.setCharacterEncoding("UTF-8");
String username=(String)session.getAttribute("username");
String sql="select * from user where username='"+username+"'";
try{
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/second-hand exchange","root","sunhan25");
  Statement stm=con.createStatement();
  ResultSet rs=stm.executeQuery(sql);
  if(rs.next()) {
  String name;
String sex ;
String phone;
	name = rs.getString(4);
	sex = rs.getString(5);
	phone = rs.getString(6);
	request.setAttribute("name", name);
	request.setAttribute("sex", sex);
	request.setAttribute("phone",phone);
  }
  rs.close();
  stm.close();
  con.close(); 
}catch(Exception e){
  e.printStackTrace();
  out.print(e);
}finally{
}
 %>
<jsp:forward page="../presonal/information.jsp" />