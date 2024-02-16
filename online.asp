<!--#include file="include/db_conn.asp"-->
<%
dim id
id = clng(session("ddid"))
conn.execute("update bank set online='"&now&"' where id="&id)
%>
<html>
<head>
<meta http-equiv="refresh" content="1500">
</head>
<body>
<span style="color:#E53333;">&hearts;</span>
</body>
</html>
