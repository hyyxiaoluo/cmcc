<%
Function userip()
 Dim getip
 getip = Request.ServerVariables("HTTP_X_FORWARDED_FOR") 
 If getip = "" Then getip = Request.ServerVariables("REMOTE_ADDR")
 userip=getip
End Function
%>