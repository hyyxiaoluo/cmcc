<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>存钱罐</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
<%
'定义密码


user=request.form("username")
pass=request.form("password")
session.Timeout=60
if user="ok" then
	if pass=mima then
		session("denglu")="on"
	else
		response.write "<script>alert('密码出错!');location.href='index.asp'</script>"
		response.End()
	end if
else

end if 
%>
    <script src="js/layui.js" charset="utf-8"></script>
	<link rel="stylesheet" href="css/font.css">
	<link rel="stylesheet" href="css/xadmin.css">
    <script>
        // 是否开启刷新记忆tab功能
        // var is_remember = false;
    </script>
    
    <style>
        .anniu{
            color:#fff;
            font-size: 1.5rem;
            font-weight:bold;
            font-family: HelveticaNeue-Medium,"Helvetica Neue Medium",HelveticaNeue,"Helvetica Neue",Helvetica,Arial,sans-serif;
            border-radius: 12px;
            display: block;
            width:500px;
            height:80px;
            margin: 0 auto;
            text-align: center;
            background-image: linear-gradient(to bottom right, red , yellow);;
            
        }
       
     </style>
    
    
</head>
<body>
<%if session("denglu")="on" then%>
<%else%>
<form method="post" action="index.asp">
  <table width="350" border="0" align="center" cellpadding="5" cellspacing="0">
  <tbody><tr>
    <td width="79">&nbsp;</td>
    <td width="148">&nbsp;</td>
    <td width="93">&nbsp;</td>
  </tr>
  <tr>
<!--  <td align="right">密码：</td> -->
<!-- <td><input name="password" type="password" id="password" size="20"></td> -->

    <td><input name="username" type="hidden" value="ok"></td>
    <div style="text-align:center;vertical-align:middle;margin-top:15%;"class="anniu1"><input type="submit" name="Submit" value="顶级的渔夫，往往用最朴素的方式钓鱼" class="anniu"></div>
  </tr>
  <tr>
    <td colspan="3" align="center">&nbsp;</td>
    </tr>
</tbody></table>
  <br>
  <br>
</form>
<%
response.End()
end if 
%>
    <!-- 顶部开始 -->
    <div class="container">
        <div class="logo"><a href="index.asp">💰 </a></div>
        <div class="left_open">
            <i title="展开左侧栏" class="iconfont">&#xe699;</i>
        </div>


        
    </div>
    <!-- 顶部结束 -->
    <!-- 中部开始 -->
     <!-- 左侧菜单开始 -->

    <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
          <div class="layui-tab-content">  
            <div class="layui-tab-item layui-show">
                <iframe src='./mylist.asp' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
          </div>
          <div id="tab_show"></div>
        </div>
    </div>
    <div class="page-content-bg"></div>
    <!-- 右侧主体结束 -->
    <!-- 中部结束 -->
    <!-- 底部开始 -->
    <div class="footer">
<div style="font-size: 25px;    color: #333333;">
	<strong>🕵🕵</strong>
</div>
    </div>
    <!-- 底部结束 -->

</body>
</html>