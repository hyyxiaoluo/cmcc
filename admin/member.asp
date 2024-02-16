<!--#include file="lconn.asp"-->
<!--#include file="admin.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户中心</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<style>
td{ font-size:22px;}
</style>
</head>
<body bgcolor="#D3D3D3">
<body>
<%
user_id=session("id")
sqlStr="select * from zy_user where user_id="&user_id&""
set rs = server.createobject("ADODB.RecordSet")
rs.open sqlStr,conn,1,1
%>
<script language=javascript>
<!--
function CheckForm()
{
	if(document.form1.pw1.value == "")
	{
		alert("请输入密码！");
		document.form1.pw1.focus();
		return false;
	}
}
//-->
</script>
<FORM  method=post action="Edit_do.asp?id=<%=session("id")%>" onSubmit="javascript:return CheckForm();" name="form1">
<br/><br/><br/><br/>
  <TABLE width="200" border=0 cellSpacing=5 cellPadding=0 align="center">
    <TBODY>
      <TR >
        <TD><TABLE border=0 cellSpacing=5 cellPadding=0 width="100%">
            <TBODY>
              <TR>
              <TR>
                <TD style="WIDTH: 26%" class=style4>账号： </TD>
                <TD width="50%"><%=rs("user_username")%> </TD>
              </TR>
              <TR>
                <TD style="WIDTH: 26%" class=style4>密码： </TD>
                <TD><INPUT style="WIDTH: 120px" id=pw1 type=password maxlength="20" name=pw1>
                </TD>
            </TBODY>
          </TABLE></TD>
      </TR>
      <TR >
        <TD vAlign=center align=middle><HR SIZE=15>
          <INPUT  id=Button1 value=提交修改 type=submit name=Button1>
        </TD>
      </TR>      
    </TBODY>
  </TABLE>
</form>
<%
   rs.close
   Set rs=Nothing
   Set conn=Nothing
%>
</body>
</html>
