<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page import="java.util.*" %>
<%!public void list(HttpServletRequest request,String strpagesize,String strpageno,String user){
try{
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/second-hand exchange","root","sunhan25");
  Statement stm=con.createStatement();
  int pageSize=Integer.parseInt(strpagesize);
  int pageNo=Integer.parseInt(strpageno);
  int start=pageSize*(pageNo-1);
  int length=pageSize;
  String sql="select count(*) as countall from goods where username='"+user+"'";
  ResultSet rs=stm.executeQuery(sql);
  if(rs.next()){
    String countall=rs.getString("countall");
    int Count=Integer.parseInt(countall);
    length=start+pageSize>Count?Count-start:pageSize;
    request.setAttribute("count", countall);
    int pagecount=Count%pageSize==0?Count/pageSize:Count/pageSize+1;
    request.setAttribute("pagecount", pagecount);
    int firstpage=1;
    int lastpage=pagecount;
    int prepage=pageNo>1?pageNo-1:1;
    int nextpage=pageNo<pagecount?pageNo+1:pagecount;
    request.setAttribute("firstpage", firstpage+"");
    request.setAttribute("lastpage", lastpage+"");
    request.setAttribute("prepage", prepage+"");
    request.setAttribute("nextpage", nextpage+"");
    rs.close();
  }
  strpagesize=length+"";
    sql="select * from goods where username='"+user+"' order by goodsno limit "+start+","+length;
    List<Hashtable<String,String>> list=new ArrayList<Hashtable<String,String>>();
    ResultSet re1=stm.executeQuery(sql);
    ResultSetMetaData rsmd=re1.getMetaData();
    int cols=rsmd.getColumnCount();
    while(re1.next()){
      Hashtable<String,String> hash=new Hashtable<String,String>();
      for(int i=1;i<=cols;i++){
        String field=(String)(rsmd.getColumnName(i));
        String value=(String)(re1.getString(i));
        if(value==null){
          value="";
          }
        hash.put(field, value);
      }
      list.add(hash);
    }
    request.setAttribute("list", list);
    re1.close();
    stm.close();
    con.close();
  }catch(Exception e){
    e.printStackTrace();
  }finally{
  }
}
%>
<%
String topage="../presonal/mygoods.jsp";
  String user=(String)session.getAttribute("username");
  String pagesize=(String)request.getParameter("pagesize");
  String pageno=(String)request.getParameter("pageno");
  if(pagesize==null){
    pagesize="10";
  }
  if(pageno==null){
    pageno="1";
  }
  request.setAttribute("pagesize", pagesize);
  request.setAttribute("pageno", pageno);
  list(request,pagesize,pageno,user);
%>
<jsp:forward page="<%=topage %>"></jsp:forward>
