<%
'=================获取地理位置函数
Function GetIpInfo(IP)
Dim Wry,IPType
Set Wry=New TQQWry
IPType=Wry.QQWry(IP)
GetIpInfo=Wry.Country&Wry.LocalStr
 Set Wry = Nothing
End Function
'=================
'=================IP地理检索类对象
Class TQQWry
Dim Country,LocalStr,Buf,OffSet
Private StartIP,EndIP,CountryFlag
Public FirstStartIP,LastStartIP,RecordCount,QQWryFile
Private Stream,EndIPOff
 
Private Sub Class_Initialize
Country=""
LocalStr=""
StartIP=0
EndIP=0
CountryFlag=0 
FirstStartIP=0 
LastStartIP=0 
EndIPOff=0 
QQWryFile=Server.MapPath("QQWry.dat")
End Sub
 
Function IP2Int(IP)
Dim IPArray,i
IPArray=Split(IP,".",-1)
FOr i=0 to 3
If Not IsNumeric(IPArray(i)) Then IPArray(i)=0
If CInt(IPArray(i))<0 Then IPArray(i)=Abs(CInt(IPArray(i)))
If CInt(IPArray(i))>255 Then IPArray(i)=255
Next
IP2Int=(CInt(IPArray(0))*256*256*256)+(CInt(IPArray(1))*256*256)+(CInt(IPArray(2))*256)+CInt(IPArray(3))'-1
End Function
 
Function Int2IP(IntValue)
p4=IntValue-Fix(IntValue/256)*256
IntValue=(IntValue-p4)/256
p3=IntValue-Fix(IntValue/256)*256
IntValue=(IntValue-p3)/256
p2=IntValue-Fix(IntValue/256)*256
IntValue=(IntValue-p2)/256
p1=IntValue
Int2IP=Cstr(p1)&"."&Cstr(p2)&"."&Cstr(p3)&"."&Cstr(p4)
End Function
 
Private Function GetStartIP(RecNo)
OffSet=FirstStartIP+RecNo * 7
Stream.Position=OffSet
Buf=Stream.Read(7)
 
EndIPOff=AscB(MidB(Buf,5,1))+(AscB(MidB(Buf,6,1))*256)+(AscB(MidB(Buf,7,1))*256*256) 
StartIP=AscB(MidB(Buf,1,1))+(AscB(MidB(Buf,2,1))*256)+(AscB(MidB(Buf,3,1))*256*256)+(AscB(MidB(Buf,4,1))*256*256*256)
GetStartIP=StartIP
End Function
 
Private Function GetEndIP()
Stream.Position=EndIPOff
Buf=Stream.Read(5)
EndIP=AscB(MidB(Buf,1,1))+(AscB(MidB(Buf,2,1))*256)+(AscB(MidB(Buf,3,1))*256*256)+(AscB(MidB(Buf,4,1))*256*256*256) 
CountryFlag=AscB(MidB(Buf,5,1))
GetEndIP=EndIP
End Function
 
Private Sub GetCountry(IP)
If (CountryFlag=1 Or CountryFlag=2) Then
Country=GetFlagStr(EndIPOff+4)
If CountryFlag=1 Then
LocalStr=GetFlagStr(Stream.Position)
If IP>= IP2Int("255.255.255.0") And IP<=IP2Int("255.255.255.255") Then
LocalStr=GetFlagStr(EndIPOff+21)
Country=GetFlagStr(EndIPOff+12)
End If
Else
LocalStr=GetFlagStr(EndIPOff+8)
End If
Else
Country=GetFlagStr(EndIPOff+4)
LocalStr=GetFlagStr(Stream.Position)
End If
Country=Trim(Country)
LocalStr=Trim(LocalStr)
If InStr(Country,"CZ88.NET") Then Country=""
If InStr(LocalStr,"CZ88.NET") Then LocalStr=""
End Sub
 
Private Function GetFlagStr(OffSet)
Dim Flag
Flag=0
Do While (True)
Stream.Position=OffSet
Flag=AscB(Stream.Read(1))
If(Flag=1 Or Flag=2 ) Then
Buf=Stream.Read(3) 
If (Flag=2 ) Then
CountryFlag=2
EndIPOff=OffSet-4
End If
OffSet=AscB(MidB(Buf,1,1))+(AscB(MidB(Buf,2,1))*256)+(AscB(MidB(Buf,3,1))*256*256)
Else
Exit Do
End If
Loop
 
If (OffSet<12 ) Then
GetFlagStr=""
Else
Stream.Position=OffSet
GetFlagStr=GetStr() 
End If
End Function



 
 ' ============================================
 ' 获取字串信息 (www.viming.com)
 '-----utf-8-----------
 Private Function GetStr()
  dim c
  getstr = ""
  dim objstream
  set objstream = server.createobject("adodb.stream")
  objstream.type = 1
  objstream.mode =3
  objstream.open
  c = stream.read(1)
  do while (ascb(c)<>0 and not stream.eos)
  objstream.write c
  c = stream.read(1)
  loop
  objstream.position = 0
  objstream.type = 2
  objstream.charset = "gb2312"
  getstr = objstream.readtext
  objstream.close
  set objstream = nothing
 End Function
 
 ' ============================================
 
Public Function QQWry(DotIP)
Dim IP,nRet
Dim RangB,RangE,RecNo
IP=IP2Int(DotIP)
Set Stream=CreateObject("ADodb.Stream")
Stream.Mode=3
Stream.Type=1
Stream.Open
Stream.LoadFromFile QQWryFile
Stream.Position=0
Buf=Stream.Read(8)
FirstStartIP=AscB(MidB(Buf,1,1))+(AscB(MidB(Buf,2,1))*256)+(AscB(MidB(Buf,3,1))*256*256)+(AscB(MidB(Buf,4,1))*256*256*256)
LastStartIP=AscB(MidB(Buf,5,1))+(AscB(MidB(Buf,6,1))*256)+(AscB(MidB(Buf,7,1))*256*256)+(AscB(MidB(Buf,8,1))*256*256*256)
RecordCount=Int((LastStartIP-FirstStartIP)/7)
If (RecordCount<=1) Then
Country="Unknow"
QQWry=2
Exit Function
End If
RangB=0
RangE=RecordCount
Do While (RangB<(RangE-1)) 
RecNo=Int((RangB+RangE)/2) 
Call GetStartIP (RecNo)
If (IP=StartIP) Then
RangB=RecNo
Exit Do
End If
If (IP>StartIP) Then
RangB=RecNo
Else 
RangE=RecNo
End If
Loop
Call GetStartIP(RangB)
Call GetEndIP()
If (StartIP<=IP) And ( EndIP>=IP) Then
nRet=0
Else
nRet=3
End If
Call GetCountry(IP)
QQWry=nRet
End Function
Private Sub Class_Terminate()
On ErrOr Resume Next
Stream.Close
If Err Then Err.Clear
Set Stream=Nothing
End Sub
 
End Class
'=================
%>