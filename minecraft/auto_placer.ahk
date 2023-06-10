#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;; Place Variables in Miliseconds:
PlaceDelay := 80
RandomFactor := 50

;; Toggle Place Mode
Shift & MButton::
    RepeatKey := !RepeatKey
    If RepeatKey
        SetTimer, Place, %PlaceDelay%
    Else
        SetTimer, Place, Off
Return

;; Place Function
Place:
    Random,n,0,%RandomFactor%
    sleep n
    SendInput, {Rbutton}
Return