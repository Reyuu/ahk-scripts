#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

Positions := []

^h::
    Reload

^j::
    connected_string := ""
    for index, element in Positions{
        connected_string := connected_string "`r`n" element
    }
    MsgBox % connected_string
    filename := ""
    FileSelectFile, filename, S16,, "Create a new file:"
    if (filename = "")
        return
    file := FileOpen(filename, "w")
    file.Write(connected_string)
    file.Close()

F6::
    x := 0
    y := 0
    MouseGetPos, x, y
    s := x ", " y
    Positions.Push( s )
