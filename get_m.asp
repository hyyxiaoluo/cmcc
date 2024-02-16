<!--#include file="include/db_conn.asp"-->
<%
dim id
id = clng(session("ddid"))
set rs = conn.execute("select m from bank where id="&id)
if not rs.eof then
	response.write rs("m")
end if
%>