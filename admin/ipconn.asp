<%
'############################################################
'
' 飞成设计 制作
' QQ:617893305
' 手机号码：15382802245
' http://www.fceywz.com/
'
' 飞成设计-专业提供：网页设计、网站整体制作、后台程序开发、
' 企业形象VI设计策划、产品目录设计印、企业产品包装设计等服务
'
'############################################################


'---------- 防止SQL注入 -----------
dim SQL_Injdata,sql_inj
SQL_Injdata = "'|;|and|exec|insert|select|delete|update|count|*|%|chr|mid|master|truncate|char|declare" 
SQL_inj = split(SQL_Injdata,"|") 

If Request.QueryString<>"" Then 
For Each SQL_Get In Request.QueryString 
For SQL_Data=0 To Ubound(SQL_inj) 
if instr(Request.QueryString(SQL_Get),Sql_Inj(Sql_Data))>0 Then 
Response.Redirect("/index.asp") 
end if 
next 
Next 
End If


dim connf,connstrf
on error resume next   '容错处理
connstrf="DBQ="+server.mappath("#fceywz_ip/#fceywz_ip.mdb")+";DefaultDir=;DRIVER={Microsoft Access Driver (*.mdb)};"
Set connf=Server.CreateObject("ADODB.CONNECTION")
connf.open connstrf
%>

