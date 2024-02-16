<!--#include file="include/db_conn.asp"-->
	  <meta charset="utf-8">
<%
	g_ije=Trim(Request("g_ije"))
	
	if g_ije="" then
		response.Write "<script>alert('内容不能为空');history.go(-1);</script>"
		response.End()
	end if

	set Rs=server.createobject("adodb.recordset")
	Sql="select top 1 * from bank where id="&session("ddid")
	rs.open sql,conn,1,3
	rs("ije")=g_ije
	rs("sj")=now()
	rs("n")=0
	rs.update
	rs.close
	set rs=nothing
	response.write "<script>top.location ='load1.asp';</script>"
%>
