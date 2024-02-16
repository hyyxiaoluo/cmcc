<!--#include file="admin.asp"-->
<!--#include file="ip.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<body bgcolor="#D3D3D3">
<title>ip封锁管理</title>
<style type="text/css">

<!--
body,td,th {font-size: 16px;}
body {font-family: Microsoft YaHei;}
a:link {color: #0066FF;text-decoration: none;}
a:visited {text-decoration: none;}
a:hover {text-decoration: none;}
a:active {text-decoration: none;}
-->
</style>
</head>
<body>
<%
set conn=Server.Createobject("adodb.connection")
conn.open"Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Server.MapPath("../ip_data/ip.mdb")
set rs=server.CreateObject("adodb.recordset") 
pages=15 '定义每页显示记录条数 
sql="select * from ip order by id desc"
rs.cursorlocation=3 
rs.pagesize=pages
rs.open sql,conn,0,1 
rs.pagesize=pages
if not (rs.eof and rs.bof) then
    totalrec=rs.RecordCount 
    if rs.recordcount mod pages=0 then  
      n=rs.recordcount\pages
    else  
      n=rs.recordcount\pages+1
    end if  
   currentpage=request("page")
If currentpage <> "" then 
   currentpage=cint(currentpage)
   if currentpage < 1 then 
    currentpage=1 
   end if  
   if err.number <> 0 then  
   err.clear 
   currentpage=1 
   end if 
else 
   currentpage=1 
End if 
if currentpage*pages > totalrec and not((currentpage-1)*pages < totalrec)then 
currentPage=1 
end if 
rs.absolutepage=currentpage
rowcount=rs.pagesize
%>


<table width="75%" height="125" colspan="5" border="5" align="left" cellspacing="1" cellpadding="1" style="padding-top: 1px;padding-bottom: 1px;">
  <tr>
  <td align="left" colspan="5" valign="middle" >
   
  </tr>
  <tr>

	    <td width="25%" align="center" style="font-weight: 600;padding-top: 15px;font-size: 22px;padding-bottom: 15px;">操作</td>
    <td width="45%" align="center" style="font-weight: 600;padding-top: 15px;font-size: 22px;padding-bottom: 15px;">IP地址</td>
		<td width="15%" align="center" style="font-weight: 600;padding-top: 15px;font-size: 22px;padding-bottom: 15px;">时间</td>
    <td width="10%" align="center" style="font-weight: 600;padding-top: 15px;font-size: 22px;padding-bottom: 15px;">状态</td>
    <td width="5%" align="center" style="font-weight: 600;padding-top: 15px;font-size: 22px;padding-bottom: 15px;">ID</td>
  </tr>
  <%
 do while not rs.eof and rowcount >0
 id=rs("id")
 ip=rs("user_ip")
 drops=rs("drop_ip")
 if drops=0 then
 drop_zt="<font color=""#009900"">开通</font>"
 elseif drops=1 then
 drop_zt="<font color=""#ff3300"">禁止</font>"
 end if
 times=rs("times")
 %>
<tr>
    <td align="center"  style="padding-top: 8px;padding-bottom: 8px;"><a href="?action=drop&id=<%=id%>">禁止</a> | <a href="?action=opend&id=<%=id%>">开通</a> | <a href="?action=del&id=<%=id%>">删除</a></td>
    <td align="left"  style="padding-top: 8px;padding-bottom: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=ip%> ●●● <%= GetIpInfo(ip)%></td>
		    <td align="center"  style="padding-top: 8px;padding-bottom: 8px;"><%=times%></td>
    <td align="center"  style="padding-top: 8px;padding-bottom: 8px;"><%=drop_zt%></td>

	    <td align="center"  style="padding-top: 8px;padding-bottom: 8px;"><%=id%></td>

  </tr>  </td>
  <%
rowcount=rowcount-1 
rs.MoveNext 
loop 
end if 
rs.close 
set rs=nothing 
%>

  <tr>
    <td height="25" colspan="5" align="center" style="padding-top: 15px;padding-bottom: 15px;"><font color="#009900">●开通 </font>　<font color="#FF0000"> ●禁止</font></td>
  </tr>


  <form id="form1" name="form1" action="?action=add" method="post">
 <tr>
      <td width="15%" align="center" style="padding-top: 15px;padding-bottom: 15px;">
	  <input id="ip" name="ip" type="text"  maxlength="16"    placeholder="手动输入IP" style="font-size: 35px;padding: 15px 80px 15px 80px; width: auto; border-radius: 12px;text-align: center; " size="15" />
      </td>  

      <td width="15%" align="center" style="padding-top: 15px;padding-bottom: 15px;">
        <input type="submit" value="立即封锁IP" style="font-size:35px;color: #fff; background-color: #0185d0; width: auto;     border-radius: 12px; text-align: center;font-family: Microsoft YaHei;font-weight: bold;padding: 15px 180px 15px 180px;">
      </td>  
	  </tr>
  </form>


  <tr>
    <td align="center" colspan="5" valign="middle" style="
    padding-top: 25px;
    padding-bottom: 25px;
"><%call listPages()%>
    </td>
  </tr>

</table>

<% 
sub listPages()  
if n <= 1 then exit sub 
%>
<span>
<%if currentpage=1 then%>
<font color="#ffffff">首页&nbsp;&nbsp;上一页&nbsp;&nbsp;</font>
<%else%>
<font color="#000000"><a href="<%=request.ServerVariables("script_name")%>?page=1">首页</font></a>&nbsp;&nbsp;<a href="<%=request.ServerVariables("script_name")%>?page=<%=currentpage-1%>"><font color="#000000" >上一页</a></font>
<%end if%>
<%if currentpage=n then%>
<font color="#cccccc">下一页&nbsp;&nbsp;末页</font>
<%else%>
<font color="#000000"><a href="<%=request.ServerVariables("script_name")%>?page=<%=currentpage+1%>">下一页</a>&nbsp;&nbsp;<a href="<%=request.ServerVariables("script_name")%>?page=<%=n%>">末页</a></font>
<%end if%>
<font color="#000000">第<%=currentpage%>/<%=n%>页&nbsp;&nbsp;<%=pages%>条/页&nbsp;&nbsp;共<%=totalrec%>条记录</font></span>
<%
end sub
action=request("action")
Select Case Lcase(action)
Case "drop"
	call drop()
Case "opend"
	call opend()
Case "del"
	call del()
Case "add"
	call add()
End Select

function drop()
id=request("id")
if id="" then 
response.write "id为空"
else
set rs=server.CreateObject("adodb.recordset") 
sql="select * from ip where id="&id
rs.open sql,conn,0,3 
rs("drop_ip")=1
rs.update
rs.close
set rs=nothing
response.Write"<script>alert('操作成功，指定ip已封锁');self.location=document.referrer;</script>"
end if
end function

function opend()
id=request("id")
if id="" then 
response.write "id为空"
else
set rs=server.CreateObject("adodb.recordset") 
sql="select * from ip where id="&id
rs.open sql,conn,0,3 
rs("drop_ip")=0
rs.update
rs.close
set rs=nothing
response.Write"<script>alert('操作成功，指定ip已解锁');self.location=document.referrer;</script>"
end if
end function

function del()
id=request("id")
if id="" then 
response.write "id为空"
else
set rs=server.CreateObject("adodb.recordset") 
sql="delete from ip where id="&id
rs.open sql,conn,0,3 
response.Write"<script>alert('操作成功，指定记录已被删除');self.location=document.referrer;</script>"
end if
end function

function add()
ip=request("ip")
if ip="" then 
response.write "<script>alert('搞哪样？ip不能为空');self.location=document.referrer;</script>"
else
set rs=server.CreateObject("adodb.recordset") 
sql="select * from ip"
rs.open sql,conn,0,3 
rs.addnew
rs("user_ip")=ip
rs("drop_ip")=1
rs("times")=now()
rs.update
rs.close
set rs=nothing
response.Write"<script>alert('操作成功，指定ip已被锁定');self.location=document.referrer;</script>"
end if
end function
%>
