function GetE(objectId) { 
	if(document.getElementById && document.getElementById(objectId)) { 
		return document.getElementById(objectId);// W3C DOM 
	} else if (document.all && document.all(objectId)) { 
		return document.all(objectId);// MSIE 4 DOM 
	} else if (document.layers && document.layers[objectId]) { 
		return document.layers[objectId];// NN 4 DOM.. note: this won't find nested layers 
	} else { 
		return false; 
	} 
}
function GetName(objName){
	return document.getElementsByName(objName);
}
function createxmlhttp()
{
    xmlhttpobj = false;
    try{
        xmlhttpobj = new XMLHttpRequest;
    }catch(e){
        try{
            xmlhttpobj=new ActiveXObject("MSXML2.XMLHTTP");
        }catch(e2){
            try{
                xmlhttpobj=new ActiveXObject("Microsoft.XMLHTTP");
            }catch(e3){
                xmlhttpobj = false;
            }
        }
    }
    return xmlhttpobj; 
}

$.extend({
     includePath: '',
     include: function(file) {
        var files = typeof file == "string" ? [file]:file;
        for (var i = 0; i < files.length; i++) {
            var name = files[i].replace(/^\s|\s$/g, "");
            var att = name.split('.');
            var ext = att[att.length - 1].toLowerCase();
            var isCSS = ext == "css";
            var tag = isCSS ? "link" : "script";
            var attr = isCSS ? " type='text/css' rel='stylesheet' " : " language='javascript' type='text/javascript' ";
            var link = (isCSS ? "href" : "src") + "='" + $.includePath + name + "'";
            if ($(tag + "[" + link + "]").length == 0) document.write("<" + tag + attr + link + "></" + tag + ">");
        }
   }
});

//返回当前页面高度 

function pageHeight(){ 
if($.browser.msie){ 
return document.compatMode == "CSS1Compat"? document.documentElement.clientHeight : 
document.body.clientHeight; 
}else{ 
return self.innerHeight; 
} 
}; 

//返回当前页面宽度 
function pageWidth(){ 
if($.browser.msie){ 
return document.compatMode == "CSS1Compat"? document.documentElement.clientWidth : 
document.body.clientWidth; 
}else{ 
return self.innerWidth; 
} 
}; 

////////////////////////////////////////////////////////////////////////////////
/*
*--------------- 客户端表单通用验证CheckForm(oForm) -----------------
* 功能:通用验证所有的表单元素.
* 使用:
* <form name="form1" onsubmit="return CheckForm(this)">
* <input type="text" name="id" check="^\S+$" warning="id不能为空,且不能含有空格">
* <input type="submit">
* </form>
* 注意:写正则表达式时一定要小心.不要让"有心人"有空子钻.
* 已实现功能:
* 对text,password,hidden,file,textarea,select,radio,checkbox进行合法性验证
* 待实现功能:把正则表式写成个库.
*--------------- 客户端表单通用验证CheckForm(oForm) -----------------
*/
////////////////////////////////////////////////////////////////////////////////

//主函数
function CheckForm(oForm)
{
var els = oForm.elements;
//遍历所有表元素
for(var i=0;i<els.length;i++)
{
//是否需要验证
if(els[i].getAttribute("check"))
{
//取得验证的正则字符串
var sReg = els[i].getAttribute("check");
//取得表单的值,用通用取值函数
var sVal = GetValue(els[i]);
//字符串->正则表达式,不区分大小写
var reg = new RegExp(sReg,"i");
if(!reg.test(sVal))
{
//验证不通过,弹出提示warning
alert(els[i].getAttribute("warning"));
//该表单元素取得焦点,用通用返回函数
GoBack(els[i])
return false;
}
}
}
}

//通用取值函数分三类进行取值
//文本输入框,直接取值el.value
//单多选,遍历所有选项取得被选中的个数返回结果"00"表示选中两个
//单多下拉菜单,遍历所有选项取得被选中的个数返回结果"0"表示选中一个
function GetValue(el)
{
//取得表单元素的类型
var sType = el.type;
switch(sType)
{
case "text":
case "hidden":
case "password":
case "file":
case "textarea": return el.value;
case "checkbox":
case "radio": return GetValueChoose(el);
case "select-one":
case "select-multiple": return GetValueSel(el);
}
//取得radio,checkbox的选中数,用"0"来表示选中的个数,我们写正则的时候就可以通过0{1,}来表示选中个数
function GetValueChoose(el)
{
var sValue = "";
//取得第一个元素的name,搜索这个元素组
var tmpels = document.getElementsByName(el.name);
for(var i=0;i<tmpels.length;i++)
{
if(tmpels[i].checked)
{
sValue += "0";
}
}
return sValue;
}
//取得select的选中数,用"0"来表示选中的个数,我们写正则的时候就可以通过0{1,}来表示选中个数
function GetValueSel(el)
{
var sValue = "";
for(var i=0;i<el.options.length;i++)
{
//单选下拉框提示选项设置为value=""
if(el.options[i].selected && el.options[i].value!="")
{
sValue += "0";
}
}
return sValue;
}
}

//通用返回函数,验证没通过返回的效果.分三类进行取值
//文本输入框,光标定位在文本输入框的末尾
//单多选,第一选项取得焦点
//单多下拉菜单,取得焦点
function GoBack(el)
{
//取得表单元素的类型
var sType = el.type;
switch(sType)
{
case "text":
case "hidden":
case "password":
case "file":
case "textarea": el.focus();var rng = el.createTextRange(); rng.collapse(false); rng.select();
case "checkbox":
case "radio": var els = document.getElementsByName(el.name);els[0].focus();
case "select-one":
case "select-multiple":el.focus();
}
}

function toSpeclen(num,len){ 
 if(typeof num !== "number"){return;}
   return new Array(Math.abs(num.toString().length-(len+1))).join("0")+num;
}

function return_num(){
    event = event ? event : window.event;
    if(event.keyCode<32 || event.keyCode>126) {
        if (window.event) {  
            event.cancelBubble = true;  
        }else if (evt){  
            evt.stopPropagation();  
        } 
    }
    return false;
}

function   getTop(e){ 
var   t=e.offsetTop;   
while(e=e.offsetParent){   
  t+=e.offsetTop;   
  }   
return   t;   
}   
function getLeft(e){   
var l=e.offsetLeft;   
while(e=e.offsetParent){   
  l+=e.offsetLeft;   
  }   
return   l;   
}

function sysre(obj,url){
	if ($("#"+obj).attr("msg") && $("#"+obj).attr("stype")=="conf"){
		if (confirm($("#"+obj).attr("msg"))){
			window.location = url;
		}
	}else{
		if ($("#"+obj).attr("msg")){
			alert($("#"+obj).attr("msg"));
		}
		window.location=url;
	}
}

function sysconfirm(url,msg){
	if (msg && url){
		if (confirm(msg)){
			window.location = url;
		}
	}
}

function show(objs,cobjs){
obj=$("#"+objs);
cobj=$("#"+cobjs);
$("#"+cobjs).css("display","");

$("#"+cobjs).css("left",parseInt(obj.position().left+obj.width()-30));
$("#"+cobjs).css("top",parseInt(obj.position().top));
}

function hide(obj){
GetE(obj).style.display="none";
}

function addLoadEvent(func){
var oldonload = window.onload; 
if (typeof window.onload != 'function') { 
window.onload = func; 
} else { 
window.onload = function() { 
oldonload(); 
func(); 
} 
} 
} 

function msg_layer(msgs,time){
var div = document.createElement("div"); 
div.title="this is a new div."; 
div.id="msg_layer";
div.style.position = "absolute";
div.style.zIndex=1000;
div.style.display="none";
div.innerHTML = msgs;
//div.style.styleFloat="left"; 
div.style.overflow="hidden"; 

//div.style.marginLeft="8px"; 
//div.style.marginTop="10px"; 
div.style.width="320px"; 
div.style.height="50px";
div.style.textAlign="center";
div.style.lineHeight="50px"; 
//div.style.backgroundRepeat="no-repeat"; 
div.style.background="#c8e8ff";
//div.style.verticalAlign="middle";
//div.style.textAlign="position";
//div.style.backgroundImage="url(783696_160540968000_2.jpg)"
document.body.appendChild(div);

var obj = $("#"+div.id);//获得相应的Div对象  
var x = ($(window).width()-obj.width())/2;
var y = ($(window).height()-obj.height())/2; 
obj.css("top",y).css("left",x);
//obj.css("text-align","center");
	 //3秒自动消失(设置透明度先为1后为0并且visibility为hidden)
	 obj.fadeIn(200,function(){
		 setTimeout(function(){obj.fadeOut(500,"");},time);
	 });	
}

function resizeImg(obj, maxw) {
    var obj = document.getElementById(obj);
    var imgs = obj.getElementsByTagName('img');
    var imgCount = imgs.length;
    if(imgCount==0) return;
    for(var i=0; i<imgCount; i++) {
        if(imgs[i].width>maxw) {
            var oldw = imgs[i].width;
            var oldh = imgs[i].height;
            imgs[i].style.width = maxw +'px';
            imgs[i].style.height = (maxw/oldw*oldh) +'px';
        }
    }
}
//window.onload = function() {resizeImg('item_explan', 770);}

function getTag(response,i,objTagName){
	try{
		var nodeV = response.getElementsByTagName(objTagName)[i].firstChild.nodeValue;
	}catch(e){
		var nodeV = ""
	}
	return nodeV;
}


function blinks(obj) {
    if (!GetE(obj).style.color) {
        GetE(obj).style.color="red";
    }
    if (GetE(obj).style.color=="red") {
        GetE(obj).style.color="black";
    } else {
        GetE(obj).style.color="red";
    }
    var timers = setTimeout("blinks('"+obj+"')",500);
}

function stoptimer(obj) {
    clearTimeout(timers)
} 

function setfrom(obj,tables,field){
	
	var values=$("#"+obj).val();
	var id=obj.replace(/[^\d]*/ig,"");
	//alert(field)
	var xmlhttpobj = createxmlhttp();
	xmlhttpobj.open('post',"ajax.asp",true);
	xmlhttpobj.setRequestHeader('Content-type','application/x-www-form-urlencoded;charset=UTF-8');
	xmlhttpobj.send("action="+escape('set')
					+"&id="+escape(id)
					+"&values="+escape(values)
					+"&tables="+escape(tables)
					+"&field="+escape(field));
	xmlhttpobj.onreadystatechange=function(){
	if(xmlhttpobj.readyState==4){
		if(xmlhttpobj.status==200){
			var doc = xmlhttpobj.responseText;
				setmsg(doc);
			}
		}
	}
}
//escape(encodeURIComponent(values))
function senddata(tables,field,value,id){
 $.ajax({
		type: "POST",
		url: "ajaxsend.php",
		data:{action:"send",tables:tables,field:field,values:value,id:id},
		timeout: 15000,
		success: function(data) {
			//setmsg(data);
		}
 });
}


function getfrom(tables,wheres,sfield,values){
	var xmlhttpobj = createxmlhttp();
	xmlhttpobj.open('post',web_path+"ajaxsend.php",true);
	xmlhttpobj.setRequestHeader('Content-type','application/x-www-form-urlencoded;charset=UTF-8');
	xmlhttpobj.send("action="+escape('get')
					+"&tables="+escape(tables)
					+"&wheres="+escape(wheres)
					+"&sfield="+escape(encodeURIComponent(sfield))
					+"&values="+escape(encodeURIComponent(values)));
	xmlhttpobj.onreadystatechange=function(){
	if(xmlhttpobj.readyState==4){
		if(xmlhttpobj.status==200){
			var doc = xmlhttpobj.responseText;
				getmsg(doc);
		}else{
				getmsg('');	
			}
		}
	}
}