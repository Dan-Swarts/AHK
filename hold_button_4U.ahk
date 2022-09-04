#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;; Toggle Hold Button
Shift & MButton::
    HoldKey := !HoldKey
    If HoldKey
        SendInput, {LButton down}
    Else
        SendInput, {LButton up}
Return
