#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

SwingDelay := 80
JiggleDelay := 50

;; Toggle Farming mode
Shift & MButton::
    Farming := !Farming
    If Farming
    {
        SetTimer, Swing, %SwingDelay%
        SetTimer, Jiggle, %JiggleDelay%
        SetTimer, Movement, 100
    }
    Else
    {
        SetTimer, Swing, Off
        SetTimer, Jiggle, Off
        SetTimer, Movement, Off
    }

Return

;; Swing Function
Swing:
    SendInput, {Lbutton}
Return

;; Jiggling Function to keep getting xp
Jiggle:
    Random,n,40,90
    Sleep, n
    Sleep, 150
    DllCall("mouse_event", uint, 1, int, 0, int, n)
    Sleep, 150
    DllCall("mouse_event", uint, 1, int, 0, int, n * -1)
Return

Movement:
    SendInput, {w down}
    Sleep, 150
    SendInput, {a down}
    Sleep, 21000
    SendInput, {a up}
    Sleep, 150
    SendInput, {d down}
    Sleep, 150
Return