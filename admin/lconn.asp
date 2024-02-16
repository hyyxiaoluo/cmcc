<%
SQLServerName = "."                        '服务器名称或IP地址
SQLDBUserName = ""                           '数据库帐号
SQLDBPassword = ""                           '数据库密码
SQLDBName = ""                       '数据库名称

dbTable="dingdan"
dbUserzt="1"
isjm=0   '0加密 1不加密
dataBaseType = 1  '0=MSSQL 1=ACCESS
'数据库连接
'On Error Resume Next   '容错声明
'response.buffer=true

Set conn = Server.CreateObject("ADODB.Connection") 
if dataBaseType=0 then
	conn.Open"Provider=sqloledb;user id="&SQLDBUserName&";password="&SQLDBPassword&";initial catalog="&SQLDBName&";data source="&SQLServerName&";"
else
	db="../Microsoft/Microsoftdb.mdb" '数据库文件位置
	conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(""&db&"")
end if

If Err Then
	err.Clear
	Set conn = Nothing
	Response.Write "错误提示：数据库连接出错，请稍候访问。"
	Response.End
	End If
	
sub CloseConn()
	conn.close
	set conn=nothing
end sub

%>