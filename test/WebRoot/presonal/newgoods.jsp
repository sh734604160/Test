<%@ page language="java" pageEncoding="GBK"%>
<%
String username=(String)session.getAttribute("username");
 %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html"; charset=gb2312" />
  <link href="../css/personal.css" rel="stylesheet" type="text/css"/ >
  <title>���������Ʒ����ƽ̨</title>
</head>
<body>
<div>
<table class="style1">
  <tr><td colspan="2" height="100">
    <table  background="../images/biaotou.png" class="style2">
      <tr><td class="style3">У԰������Ʒ����ƽ̨</td></tr>
      </table>
      </td>
      </tr>
   <tr class="style4"><td colspan="2">
      <span class="style5">&nbsp&nbsp&nbsp&nbsp&nbsp<a href="../welcome.jsp">��ҳ</a>&nbsp|&nbsp<a href="../personal.jsp">��������</a></span>
   </td></tr> 
   <tr><td class="style6">
     <table class="style7">
       <tr><td></td></tr>
       <tr><td><hr></td></tr>
       <tr><td class=style8 align="center">��ӭ�����û�<%=username%></td></tr>
       <tr><td align="center"><a href=../index.html><input type="button" value="ע��"></a></td></tr>
       <tr><td><hr></td></tr>
       <tr><td></td></tr>
     </table>
     <div class="style9">
       <table width="100%">
         <tr><td class="style10" background="../images/jianbian1.png">&nbsp&nbsp���˹���</td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="../action/showpreinfor.jsp">&nbsp&nbsp-������Ϣ����</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="../action/showmygoods.jsp?pagesize=10&pageno=1">&nbsp&nbsp-��Ʒ��Ϣ����</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="newgoods.jsp">&nbsp&nbsp-������Ʒ����</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="../presonal/unfinishorder.jsp">&nbsp&nbsp-δ�궩����Ϣ</a></td></tr>
         <tr><td></td></tr>
         <tr><td class="style11"><a href="../action/showfinishedorder.jsp?pagesize=10&pageno=1">&nbsp&nbsp-���궩����Ϣ</a></td></tr>
         <tr><td></td></tr>
       </table>
     </div>
     <table>
       <tr><tb><hr></tb></tr>
     </table>
     <div class="style9">
       <table width="100%">
         <tr><td class="style10" background="../images/jianbian1.png">&nbsp&nbsp����������</td></tr>
         <tr><td>&nbsp<textarea cols="21px"></textarea></td></tr>
         <tr><td align="center"><input type="submit" value="�ύ"></td></tr>
       </table>
     </div>
     <table>
       <tr><tb><hr></tb></tr>
     </table>
     </td>
     <td>
     <form action="../action/addgoods.jsp" method="post" enctype="multipart/form-data">
       <table class="addgoodstable">
       <tr><td class="addgood-font" colspan="2" >����ϸ������Ҫ�ϼܵ���Ʒ�ĸ�����Ϣ��</td></tr>
       <tr background="#FFFFBB"><td colspan="2"><hr></td></tr>
       <tr><td class="addgood-font" align="right" width="44%">��Ʒ���ƣ�</td><td><input type="text" name="goodsname"></td></tr>
       <tr><td class="addgood-font" align="right">��Ʒ���</td><td><select name="type"><option value="001">����������</option><option value="002">ͼ��С˵��</option><option value="003">ѧϰ��Ʒ��</option><option value="004">Ь��������</option><option value="005">���ðٻ���</option><option value="006">�����˶���</option><option value="007">��ʳС����</option></select></td></tr>
       <tr><td class="addgood-font" align="right">��Ʒ��飺</td><td><textarea name="introduce"></textarea></td></tr>
       <tr><td class="addgood-font" align="right">�ϴ���ƷͼƬ��</td><td><input type="file" name="image"></td></tr>
       <tr><td class="addgood-font" colspan="2" align="center">��ȷ��������ļ���ΪӢ�ģ�</td></tr>
       <tr><td  align="center" colspan="2"><input type="submit" value="�ύ"></td></tr>
       <tr><td colspan="2"><hr></td></tr>
       </table>
       </form>
     </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
     <hr>
     <font face="����">��Ȩ����</font>
     </td>
   </tr>
</table>
</div>
</body>
</html>