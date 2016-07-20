<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
String username=(String)session.getAttribute("username");
String pagesize=(String)request.getAttribute("pagesize");
String pageno=(String)request.getAttribute("pageno");
int sum=1;
 %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html"; charset=gb2312" />
  <link href="../css/personal.css" rel="stylesheet" type="text/css"/ >
  <title>西电二手物品交易平台</title>
</head>
<body>
<div>
<table class="style1">
  <tr><td colspan="2" height="100">
    <table  background="../images/biaotou.png" class="style2">
      <tr><td class="style3">校园二手物品交易平台</td></tr>
      </table>
      </td>
  <tr class="style4"><td colspan="2">
      <span class="style5">&nbsp&nbsp&nbsp&nbsp&nbsp<a href="../Administrator.jsp">管理中心</a></span>
   </td></tr> 
   <tr><td class="style6">
     <table class="style7">
       <tr><td></td></tr>
       <tr><td><hr></td></tr>
       <tr><td class=style8 align="center">欢迎您，管理员<%=username%></td></tr>
       <tr><td align="center"><a href=../index.html><input type="button" value="注销"></a></td></tr>
       <tr><td><hr></td></tr>
       <tr><td></td></tr>
     </table>
     <div class="style9">
       <table width="100%">
         <tr><td class="style10" background="../images/jianbian1.png">&nbsp&nbsp个人管理</td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="../action/showuser.jsp?pagesize=10&pageno=1">&nbsp&nbsp-用户信息管理</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="">&nbsp&nbsp-商品类别管理</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="">&nbsp&nbsp-查看订单信息</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="">&nbsp&nbsp-查看用户留言</a></td></tr>
         <tr><td></td></tr>
       </table>
     </div>
     <table>
       <tr><tb><hr></tb></tr>
     </table>
     <div class="style9">
       <table width="100%">
         <tr><td class="style10" background="../images/jianbian1.png">&nbsp&nbsp给我们留言</td></tr>
         <tr><td>&nbsp<textarea cols="21px"></textarea></td></tr>
         <tr><td align="center"><input type="submit" value="提交"></td></tr>
       </table>
     </div>
     <table>
       <tr><td><hr></td></tr>
     </table>
     </td>
     <td>
       <table class="mygoodstable" >
       <tr><td width="20%">用户名</td><td width="20%">姓名</td><td width="20%">性别</td><td width="20%">联系方式</td><td width="20%"></td></tr>
          <% 
             List<Hashtable<String,String>> list= ( List<Hashtable<String,String>>)request.getAttribute("list");
             if(list!=null){
             Iterator<Hashtable<String,String>> it=list.iterator();
             while(it.hasNext()){
               Hashtable<String,String> hash=it.next();
         %>
         <tr>
           <td>
             <%=hash.get("username") %>
           </td>
           <td>
            <%=hash.get("name") %>
           </td>
           <td>
             <%=hash.get("sex") %>
           </td>
           <td>
             <%=hash.get("phone") %>
           </td>
           <td>
             <a href="../action/deleteuser.jsp?username=<%=hash.get("username") %>"><input type="button" value="删除"></a>
           </td>
           </tr>
           <%
           sum++;
         }
         } %>
       </table>
       <table width="100%">
         <tr>
           <%String count=(String)request.getAttribute("count");
           String firstpage=(String)request.getAttribute("firstpage");
           String prepage=(String)request.getAttribute("prepage");
           String nextpage=(String)request.getAttribute("nextpage");
           String lastpage=(String)request.getAttribute("lastpage");
           int nowpage=Integer.parseInt(count)%Integer.parseInt(pagesize)==0?Integer.parseInt(count)/Integer.parseInt(pagesize):Integer.parseInt(count)/Integer.parseInt(pagesize)+1;
            %>
            <td align="left">共有<%=count %>名用户，共<%=nowpage %>页，当前在第<%=pageno %>页</td>
            <td align="right">
              <a href="../action/showuser.jsp?pagesize=<%=pagesize %>&pageno=<%= firstpage %>">首页</a>
              <a href="../action/showuser.jsp?pagesize=<%=pagesize %>&pageno=<%= prepage %>">上一页</a>
              <a href="../action/showuser.jsp?pagesize=<%=pagesize %>&pageno=<%= nextpage %>">下一页</a>
              <a href="../action/showuser.jsp?pagesize=<%=pagesize %>&pageno=<%= lastpage %>">尾页</a></td>
         </tr>
       </table>
     </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
     <hr>
     <font face="仿宋">版权所有</font>
     </td>
   </tr>
</table>
</div>
</body>
</html>