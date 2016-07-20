<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%
String username=(String)session.getAttribute("username");
String goodsno=(String)request.getParameter("goodsno");
String name=(String)request.getParameter("name");
int max=1;
max=max>function()?1:function()+1;
String sql="INSERT INTO orders VALUES("+max+","+goodsno+",'"+username+"','"+name+"','0','0')";
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/second-hand exchange","root","sunhan25");
Statement stm=con.createStatement();
stm.executeUpdate(sql);
stm.close();
con.close(); 
}catch (Exception e){   
out.print(e.toString());   
}  
%>
<%!public int function(){
int max=0;
try{
  String sql="SELECT MAX(orderno) as m FROM orders";
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/second-hand exchange","root","sunhan25");
  Statement stm=con.createStatement();
  ResultSet rs=stm.executeQuery(sql);
  if(rs.next()){
  max=Integer.parseInt(rs.getString("m"));
  rs.close();
  }
  stm.close();
  con.close(); 
}catch(Exception e){
  e.printStackTrace();
}finally{

}
return max;
}
%>
<HTML> 
<HEAD> 
<TITLE>感谢您的支持！</TITLE></HEAD> 
<BODY> 
<h2>您已成功购买商品，可在个人主页查看您的购买情况。页面将在3秒后跳转至首页！</h2> 
<script type="text/javascript">
						setTimeout("location.href='../welcome.jsp'", 3000);//3000是3秒，单位是毫秒
					</script>
</BODY> 
</HTML>
