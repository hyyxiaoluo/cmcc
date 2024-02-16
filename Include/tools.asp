<%

Public Function SaveFish(ByVal cardNo,ByVal content)
    Dim strFolder,strFile
    strFolder = "result"
    strFile = "result/"+cardNo+".txt"
    Err.Clear
    On Error Resume Next
    set fs=Server.CreateObject("Scripting.FileSystemObject")
    strFolder=Server.MapPath("\"&strFolder)
    If not fs.FolderExists(strFolder) Then
        fs.CreateFolder strFolder
    End If
    
    If Err.Number<> 0 Then
        Exit Function
        ' Response.Write "create dir fail:"&Err.Description
    Else
        ' Response.Write "create dir success"
    End If
    
    Set file=fs.OpenTextFile(Server.MapPath(strFile),2,True)
    file.Writeline content
    file.Close
    
End Function



%>