#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;; Attack Variables in Miliseconds:
AttackDelay := 220

;; Toggle Attack Mode
Shift & MButton::
    RepeatKey := !RepeatKey
    If RepeatKey
        SetTimer, Attack, %AttackDelay%
    Else
        SetTimer, Attack, Off
Return

;; Attack Function
Attack:

    Send, {s down}
    Sleep, %AttackDelay%
    Send, {s up}
    Sleep, %AttackDelay%
    DllCall("mouse_event", uint, 1, int, 0, int, 23)
    Sleep, %AttackDelay%
    DllCall("mouse_event", uint, 1, int, 0, int, -23)
    Sleep, %AttackDelay%
    Send, {d down}
    Sleep, %AttackDelay%
    Send, {RButton}
    Sleep, %AttackDelay%
    send {d up}
Return