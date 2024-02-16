<%
'作者：凌陈亮www.lingchenliang.com（QQ：57404811）
'函数功能：用ASP通过AJAX XMLHTTP方式获取百度或www.ip138.com中IP查询的地理位置信息
'若百度或IP138查询结果页HTML有更改，本接口将失效，请自行修改对应的开始和结束标记即可
'参数：接口类型（0：百度接口，其它：IP138接口）、IP地址
function gw_gethttpstr(styp,ip) 
    On Error Resume Next 
    Server.ScriptTimeOut=9999999 
    Dim url,a,b,wstr,start,over,body
    if styp=0 then
        url="https://www.baidu.com/s?wd=" & ip
        a=ip & "” 属于" 'ASP获取目标网页内容开始标记 
        b="。查ip归属地" 'ASP获取网页内容结束标记
    else
        url="http://www.ip138.com/ips138.asp?ip=" & ip
        a="本站数据：" 'ASP获取目标网页内容开始标记
        b="</li><li>参考数据" 'ASP获取网页内容结束标记
    end if 
    wstr=getHTTPPage(styp,url)
    start=Newstring(wstr,a)+len(a)
    over=Newstring(wstr,b)
    body=mid(wstr,start,over-start)
    gw_gethttpstr=trim(body)
end function
 
Function getHTTPPage(styp,Path) 
    dim t
    t = GetBody(Path) 
    if styp=0 then
        getHTTPPage=BytesToBstr(t,"utf-8") '百度页面是UTF-8编码
    else
        getHTTPPage=BytesToBstr(t,"UTF-8") 'IP138页面是UTF-8编码
    end if
End function
 
Function GetBody(url) 
    dim Retrieval
    Set Retrieval = CreateObject("Microsoft.XMLHTTP") 
    With Retrieval 
    .Open "Get", url, false, "", "" 
    .Send 
    GetBody = .ResponseBody 
    End With 
    Set Retrieval = Nothing 
End Function 
 
Function BytesToBstr(body,Cset) 
    dim objstream 
    set objstream = Server.CreateObject("adodb.stream") 
    objstream.Type = 1 
    objstream.Mode =3 
    objstream.Open 
    objstream.Write body 
    objstream.Position = 0 
    objstream.Type = 2 
    objstream.Charset = Cset 
    BytesToBstr = objstream.ReadText 
    objstream.Close 
    set objstream = nothing 
End Function
 
Function Newstring(wstr,strng) 
    Newstring=Instr(lcase(wstr),lcase(strng)) 
    if Newstring<=0 then Newstring=Len(wstr) 
End Function
%>


