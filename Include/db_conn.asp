<%
dim conn
db="Microsoft/Microsoftdb.mdb" '数据库文件位置
set conn=server.createobject("ADODB.CONNECTION")
'Access 数据库连接
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(""&db&"")
sub CloseConn()
	conn.close
	set conn=nothing
end sub

Dim NumTemp
Randomize Timer
NumTemp=Int((9*Rnd())+1)
cz=conn.execute("select ccb from config where id=1")(0)
%>
<%

Function RemoveHTML(strHTML) 
Dim objRegExp, Match, Matches 
Set objRegExp = New Regexp 
objRegExp.IgnoreCase = True 
objRegExp.Global = True 
'取闭合的<> 
objRegExp.Pattern = "<.+?>" 
'进行匹配 
Set Matches = objRegExp.Execute(strHTML) 
' 遍历匹配集合，并替换掉匹配的项目 
For Each Match in Matches 
strHtml=Replace(strHTML,Match.Value,"") 
Next 
RemoveHTML=strHTML 
Set objRegExp = Nothing 
End Function

'调用

str=RemoveHTML(str)

%>