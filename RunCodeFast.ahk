#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;; Toggle Hold Button
Shift & MButton::
    SendInput, {Ctrl Down}
    Sleep, 50
    SendInput, {s}
    Sleep, 50
    SendInput, {Alt Down} 
    Sleep, 300
    SendInput, {n}
    Sleep, 50
    SendInput, {Ctrl Up}
    Sleep, 50
    SendInput, {Alt Up}
    Sleep, 50

Return
