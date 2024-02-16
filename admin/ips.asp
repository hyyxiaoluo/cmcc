<% 
Dim IP,IPString,VisitIP 
'设置IP地址，用“|”隔开 
IPString="|117.22.200.33|127.0.0.1|" 
'获取IP地址 
IP = Request.ServerVariables("HTTP_X_FORWARDED_FOR") 
If IP = "" Then 
IP = Request.ServerVariables("REMOTE_ADDR") 
End If 
VisitIP="|"&IP&"|" 
If instr(1,IPString,VisitIP)>0 Then 
'符合的IP执行相应的操作 
href="admin.asp"
else 
'不符合的IP执行相应的操作 
Response.write "您所在的IP禁止访问" 
response.end 
End If 
%> 