
<%
'ip锁定for maxcms 通用版本 by:phuai date:12/06/2009
'我的小站:www.bbmoo.com 邀百度收录正常的同学友连。
'------------------------------
ruku=true '是否所有访问ip都记录如库，true为记录，false为不记录
drop=true '是否打开ip阻止功能，true为打开，false关闭，关闭后不阻止数据库锁定的ip访问
action=0 '全站阻止为0，只阻止播放页为1
'---------------------------
ip=getip()

set conn=Server.Createobject("adodb.connection")
conn.open"Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Server.MapPath("ip_data/ip.mdb")
set rs=server.CreateObject("adodb.recordset") 

sqlstr="select * from ip where [user_ip] = '"+ip+"'"
rs.open sqlstr,conn,1,3
if rs.bof and rs.eof then
if ruku=true then
rs.addnew
rs("user_ip")=ip
rs("drop_ip")=0
rs("times")=now()
rs.update
end if
else
if drop=true then
drop_ip=rs("drop_ip")
if drop_ip=1 then
if action=0 then
response.Write"document.writeln('<script>window.location.href=\'\/en.html\';<\/script>')"
else
response.Redirect"/en.html"
end if
end if
end if
end if
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 

Function getip()
getip = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
If getip = "" or IsNull(getip) Then getip = Request.ServerVariables("REMOTE_ADDR")
End Function
%>