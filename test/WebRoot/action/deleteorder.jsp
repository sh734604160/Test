<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%
request.setCharacterEncoding("UTF-8");
String orderno=(String)request.getParameter("orderno");
int no=Integer.parseInt(orderno);
String sql="delete from orders where orderno="+no+"";
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
<TITLE>感谢您的支持！</TITLE></HEAD> 
<BODY> 
<h2>您已成功删除此购买信息，本页面将在3秒后退回至个人订单页面，祝您购物愉快！</h2> 
<script type="text/javascript">
						setTimeout("location.href='../presonal/unfinishorder.jsp'", 3000);//3000是3秒，单位是毫秒
					</script>
</BODY> 
</HTML>