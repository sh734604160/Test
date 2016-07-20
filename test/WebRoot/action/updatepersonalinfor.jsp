<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%
request.setCharacterEncoding("UTF-8");
String username=(String)session.getAttribute("username");
String name=request.getParameter("name1");
String phone=request.getParameter("phone1");
String sex=request.getParameter("sex1");
boolean isValid=false;
String sql="UPDATE user SET name='"+name+"',sex='"+sex+"',phone='"+phone+"' WHERE username='"+username+"'";
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
<HTML> 
<HEAD> 
<TITLE>信息更新成功</TITLE></HEAD> 
<BODY> 
<h2>您已成功更新个人信息，页面将在3秒后跳转至个人中心页面！</h2> 
<script type="text/javascript">
						setTimeout("location.href='../personal.jsp'", 3000);//3000是3秒，单位是毫秒
					</script>
</BODY> 
</HTML>