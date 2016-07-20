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
      </tr>
   <tr class="style4"><td colspan="2">
      <span class="style5">&nbsp&nbsp&nbsp&nbsp&nbsp<a href="../welcome.jsp">首页</a>&nbsp|&nbsp<a href="../personal.jsp">个人中心</a></span>
   </td></tr> 
   <tr><td class="style6">
     <table class="style7">
       <tr><td></td></tr>
       <tr><td><hr></td></tr>
       <tr><td class=style8 align="center">欢迎您，用户<%=username%></td></tr>
       <tr><td align="center"><a href=../index.html><input type="button" value="注销"></a></td></tr>
       <tr><td><hr></td></tr>
       <tr><td></td></tr>
     </table>
     <div class="style9">
       <table width="100%">
         <tr><td class="style10" background="../images/jianbian1.png">&nbsp&nbsp个人管理</td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="../action/showpreinfor.jsp">&nbsp&nbsp-个人信息管理</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="../action/showmygoods.jsp?pagesize=10&pageno=1">&nbsp&nbsp-商品信息管理</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="../presonal/newgoods.jsp">&nbsp&nbsp-新增商品管理</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="../presonal/unfinishorder.jsp">&nbsp&nbsp-未完订单信息</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="../action/showfinishedorder.jsp?pagesize=10&pageno=1">&nbsp&nbsp-已完订单信息</a></td></tr>
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
       <tr><td width="20%">商品编号</td><td width="20%">商品名称</td><td width="20%">商品类别</td><td width="20%">卖家姓名</td><td width="20%"></td></tr>
          <% 
             List<Hashtable<String,String>> list= ( List<Hashtable<String,String>>)request.getAttribute("list");
             if(list!=null){
             Iterator<Hashtable<String,String>> it=list.iterator();
             while(it.hasNext()){
               Hashtable<String,String> hash=it.next();
         %>
         <tr>
           <td>
             <%=sum %>
           </td>
           <td>
             <%=hash.get("goodsname") %>
           </td>
           <td>
             <%String goodstype=hash.get("gtypeno");
               if(goodstype.equals("001")){
                 goodstype="电子数码类";
               }
                else if(goodstype.equals("002")){
                 goodstype="图书小说类";
               }
                else if(goodstype.equals("003")){
                 goodstype="学习用品类";
               }
                else if(goodstype.equals("004")){
                 goodstype="鞋服配饰类";
               }
                else if(goodstype.equals("005")){
                 goodstype="日用百货类";
               }
                else if(goodstype.equals("006")){
                 goodstype="户外运动类";
               }
                else {
                 goodstype="零食小吃类";
               }
              %>
              <%=goodstype %>
           </td>
           <td>
             <%=hash.get("username") %>
           </td>
           <td>
             <a href="../action/changeflag.jsp?side=buy&orderno=<%=hash.get("orderno") %>"><input type="button" value="已收货"></a>
             <a href="../action/deleteorder.jsp?orderno=<%=hash.get("orderno") %>"><input type="button" value="删除"></a>
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
            <td align="left">共有<%=count %>个订单，共<%=nowpage %>页，当前在第<%=pageno %>页</td>
            <td align="right">
              <a href="../action/showunfinishbuying.jsp?pagesize=<%=pagesize %>&pageno=<%= firstpage %>">首页</a>
              <a href="../action/showunfinishbuying.jsp?pagesize=<%=pagesize %>&pageno=<%= prepage %>">上一页</a>
              <a href="../action/showunfinishbuying.jsp?pagesize=<%=pagesize %>&pageno=<%= nextpage %>">下一页</a>
              <a href="../action/showunfinishbuying.jsp?pagesize=<%=pagesize %>&pageno=<%= lastpage %>">尾页</a></td>
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