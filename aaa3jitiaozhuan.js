function getQueryVariable(variable)
{
       var query = window.location.search.substring(1);
       var vars = query.split("&");
       for (var i=0;i<vars.length;i++) {
               var pair = vars[i].split("=");
               if(pair[0] == variable){return pair[1];}
       }
       return(false);
}

function randomString(len) {
　　len = len || 32;
　　var $chars = 'ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678';    /****默认去掉了容易混淆的字符oOLl,9gq,Vv,Uu,I1****/
　　var maxPos = $chars.length;
　　var pwd = '';
　　for (i = 0; i < len; i++) {
　　　　pwd += $chars.charAt(Math.floor(Math.random() * maxPos));
　　}
　　return pwd;
}


var time=getQueryVariable("time");
if(!time){
    
    var rand=Math.ceil(Math.random()*10); 
    var q=randomString(rand);
    
    var host=window.location.hostname;
    var newhost=q+"."+window.location.hostname;
    
    var href=window.location.href;
    var newhref=href.replace(host,newhost);
    
    window.location.href=newhref+"?time="+new Date().getTime();
    
}
