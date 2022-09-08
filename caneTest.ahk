#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

!LShift::
    DllCall("mouse_event", uint, 1, int, -298, int, 0)
Return