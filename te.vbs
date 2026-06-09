Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

scriptFolder = fso.GetParentFolderName(WScript.ScriptFullName)
exePath = fso.BuildPath(scriptFolder, "wr\action.exe")

If fso.FileExists(exePath) Then
    shell.Run """" & exePath & """", 0, False
Else
    MsgBox "action.exe not found:" & vbCrLf & exePath
End If
