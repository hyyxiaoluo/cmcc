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
　　len = len || 5;
　　var $chars = 'ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678';    /****默认去掉了容易混淆的字符oOLl,9gq,Vv,Uu,I1****/
　　var maxPos = $chars.length;
　　var pwd = '';
　　for (i = 0; i < len; i++) {
// 　　　　pwd += $chars.charAt(Math.floor(Math.random() * maxPos));
      pwd +=$chars.split('')[Math.floor((Math.random() * maxPos))];
　　}
　　return pwd;
    // return Math.floor((Math.random()*maxPos));
}
// var rand = Math.ceil(Math.random() * 100); 
//     console.log(rand)
//     var q=randomString(5);
//     console.log(q)
//     var host=window.location.hostname;
//     var newhost=q+"."+window.location.hostname;
// console.log(newhost)
var time = getQueryVariable("time");
var newhost = window.location.href;
// console.log(newhost)
// console.log(newhost.indexOf('a.'));
// if (newhost.indexOf('a.') > -1) {
//     newhost = newhost.replace('a.', '');
// }
//     console.log(newhost)


if(!time){
    
    // var rand=Math.ceil(Math.random()*10); 
    // var q=randomString(rand);
    var q=randomString(5);
    var host=window.location.hostname;
    var newhost = q + "." + window.location.hostname;
    newhost = randomString(5) + "." + host.split('.')[1] +'.'+ host.split('.')[2];
    // if (newhost.indexOf('a.') > -1) {
    //     newhost = newhost.replace('a.', '');
    // }
    var href=window.location.href;
    var newhref=href.replace(host,newhost);
    
    window.location.href=newhref+"?time="+new Date().getTime();
    
}
