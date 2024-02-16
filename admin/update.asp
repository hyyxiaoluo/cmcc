<!--#include file="lconn.asp"-->
<!--#include file="Admin.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>信息管理</title>
<style type="text/css">
<!--
td {
	font-size: 12px;
}
.style12 {color: #000000}
.style13 {color: #336699}
.style121 {color: #313C42}
.STYLE8 {
	color: #FF0000;
	font-weight: bold;
	font-size: 16px;
}
.hong {
	color: #FF0000;
}
.STYLE15 {font-size: 12px}
.STYLE17 {font-size: 14}
-->
</style>
</head>

<body>
<%	
if request("on")="ok" then
	set rs=server.createobject("adodb.recordset")
	sql="select * from bank where id="&request("id")
	rs.open sql,conn,1,3
	if not rs.eof then
	rs("hf")=request.Form("hf")
	rs.update
	rs.close
	end if
  response.redirect "update.asp?id="&request("id")
  response.End()
end if
%>
<%	
dim hid
hid=request("id")	  
set rs=server.createobject("adodb.recordset") 
sql="select * from bank where id="&hid
rs.open sql,conn,1,3
%><form id="form1" name="form1" method="post" action="?on=ok">
  <br>
  <br>
   	<table width="600" height="85" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#999999">
      <tr>
        <td width="104" height="160" align="right" bgcolor="#E0E0E0">        <input name="id" type="hidden" id="id" value="<%=rs("id")%>" />
        提交内容：</td>
        <td width="481" bgcolor="#FFFFFF"><textarea name="hf" style="width:400px; height:160px;" cols="30" id="hf"><%=rs("hf")%></textarea>
          <br>
          <br>
<input type="submit" name="Submit2" value="提交" />
&nbsp;  <input type="button" name="Submit" value="返回"  onClick="javascript:window.location='mylist.asp';" />
<br></td>
      </tr>
  </table>

    <br>
  <table width="600" height="" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#999999">
  <tr>
    <td height="35" colspan="2" align="center" valign="middle" nowrap="nowrap" bgcolor="#E0E0E0"><strong>显示内容</strong></td>
    </tr>
  <tr>
    
    <td width="320" height="50" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4 STYLE15 style12"> <img alt="" src=""><font color="red"><%=rs("hf") %></font></span></div></td>
  </tr>
  
</table>
        </form>
</body>
</html>
