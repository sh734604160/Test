<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
String username=(String)session.getAttribute("username");
String pagesize=(String)request.getAttribute("pagesize");
String pageno=(String)request.getAttribute("pageno");
 %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html"; charset=gb2312" />
  <link href="../css/electronic-product.css" rel="stylesheet" type="text/css"/>
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
      </tr>
   <tr class="style4"><td colspan="2">
      <span class="style5">&nbsp&nbsp&nbsp&nbsp&nbsp<a href="../welcome.jsp">首页</a>&nbsp|&nbsp<a href="../personal.jsp">个人中心</a></span>
   </td></tr>  
   <tr><td class="style6">
     <table class="style7">
       <tr><td><hr></td></tr>
       <tr><td class=style8 align="center">欢迎您，用户<%=username%></td></tr>
       <tr><td align="center"><a href=../index.html><input type="button" value="注销"></a></td></tr>
       <tr><td><hr></td></tr>
       <tr><td></td></tr>
     </table>
     <div class="style9">
       <table width="100%">
         <tr><td class="style10" background="../images/jianbian1.png">&nbsp&nbsp商品类别</td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=001&pagesize=10&pageno=1">&nbsp&nbsp-电子数码类</a></td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=002&pagesize=10&pageno=1">&nbsp&nbsp-图书小说类</a></td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=003&pagesize=10&pageno=1">&nbsp&nbsp-学习用品类</a></td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=004&pagesize=10&pageno=1">&nbsp&nbsp-鞋服配饰类</a></td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=005&pagesize=10&pageno=1">&nbsp&nbsp-日用百货类</a></td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=006&pagesize=10&pageno=1">&nbsp&nbsp-户外运动类</a></td></tr>
         <tr><td class="style11"><a href="../action/ele-goods.jsp?type=007&pagesize=10&pageno=1">&nbsp&nbsp-零食小吃类</a></td></tr>
       </table>
     </div>
     <div class="style9">
       <table width="100%">
         <tr><td class="style10" background="../images/jianbian1.png">&nbsp&nbsp给我们留言</td></tr>
         <tr><td>&nbsp<textarea cols="21px"></textarea></td></tr>
         <tr><td align="center"><input type="submit" value="提交"></td></tr>
       </table>
     </div>
     </td>
     <td>
       <table>
         <tr>
          <% 
             List<Hashtable<String,String>> list= ( List<Hashtable<String,String>>)request.getAttribute("list");
             if(list!=null){
             Iterator<Hashtable<String,String>> it=list.iterator();
             int sum=0;
             while(it.hasNext()){
               sum++;
               Hashtable<String,String> hash=it.next();
         %>
           <td>
             <div class="style13">
               <table>
                 <tr><td><img src="../<%=hash.get("image") %>"></td></tr>
                 <tr><td align="center"><a href="showgoods.jsp?goodsno=<%=hash.get("goodsno") %>"><%=hash.get("goodsname") %></a></td></tr>
               </table>
             </div>
           </td>
           <%
           if(sum==5){
            %>
            </tr>
            <tr>
         <%}
         }
         } %>
         </tr>
         </table>
         <form name="form1" action="../action/ele-goods.jsp" method="post">
         <table width="100%">
         <tr>
           <%String count=(String)request.getAttribute("count");
           String firstpage=(String)request.getAttribute("firstpage");
           String prepage=(String)request.getAttribute("prepage");
           String nextpage=(String)request.getAttribute("nextpage");
           String lastpage=(String)request.getAttribute("lastpage");
           String type=(String)request.getAttribute("type");
           int nowpage=Integer.parseInt(count)%Integer.parseInt(pagesize)==0?Integer.parseInt(count)/Integer.parseInt(pagesize):Integer.parseInt(count)/Integer.parseInt(pagesize)+1;
            %>
            <td align="left">共有<%=count %>件商品，共<%=nowpage %>页，当前在第<%=pageno %>页</td>
            <td align="right">
              <a href="../action/ele-goods.jsp?type=<%=type %>&pagesize=<%=pagesize %>&pageno=<%= firstpage %>">首页</a>
              <a href="../action/ele-goods.jsp?type=<%=type %>&pagesize=<%=pagesize %>&pageno=<%= prepage %>">上一页</a>
              <a href="../action/ele-goods.jsp?type=<%=type %>&pagesize=<%=pagesize %>&pageno=<%= nextpage %>">下一页</a>
              <a href="../action/ele-goods.jsp?type=<%=type %>&pagesize=<%=pagesize %>&pageno=<%= lastpage %>">尾页</a></td>
         </tr>
       </table>
       </form>
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