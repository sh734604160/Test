<%@ page language="java" pageEncoding="GBK"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page import="com.jspsmart.upload.*"%> 
<%
request.setCharacterEncoding("GBK");
SmartUpload su=new SmartUpload();
su.initialize(this.getServletConfig(), request, response);  
su.setAllowedFilesList("jpg,gif,png");
com.jspsmart.upload.Request req = su.getRequest(); 
int goodno=function(request)+1;
try{
su.upload();
String username=(String)session.getAttribute("username");
String name=req.getParameter("goodsname");
String type=req.getParameter("type");
String introduce=req.getParameter("introduce");
File file=su.getFiles().getFile(0);
file.saveAs("D:/tomcat/webapps/test/images/"+file.getFileName(),su.SAVE_PHYSICAL);
String sql="INSERT INTO goods VALUES("+goodno+",'"+name+"','"+type+"','"+introduce+"','"+"images/"+file.getFileName()+"','"+username+"','0')";
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
<%! public int function(HttpServletRequest request){
int max=0;
try{
  String sql="SELECT MAX(goodsno) as max FROM goods";
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/second-hand exchange","root","sunhan25");
  Statement stm=con.createStatement();
  ResultSet rs=stm.executeQuery(sql);
  if(rs.next()){
  max=Integer.parseInt(rs.getString("max"));
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
<h2>您已成功添加商品，可在个人主页查看您的所有商品。页面将在3秒后跳转至首页！</h2> 
<script type="text/javascript">
						setTimeout("location.href='../welcome.jsp'", 3000);//3000是3秒，单位是毫秒
					</script>
</BODY> 
</HTML>
