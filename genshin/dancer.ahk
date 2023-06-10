;; Swing variables in Miliseconds:
StepForwardDelay := 200
StepSideDelay := 800
SwitchCharacterDelay := 3000


MButton::
    RepeatKey := !RepeatKey

    ;; Step Foreward:
    If RepeatKey
        SetTimer, StepForward, %StepForwardDelay% 
    Else
        SetTimer, StepForward, Off 

Return

;; Step Foreward:
StepForward:
    SendInput, {w}
Return

;; Step Left:
StepLeft:
    SendInput, {a}
Return

;; Step Right:
StepRight:
    SendInput, {d}
Return

;; Switch Character:
SwitchCharacter:
    SendInput, {1}
    Sleep, SwitchCharacterDelay
    SendInput, {2}
    Sleep, SwitchCharacterDelay
    SendInput, {3}
    Sleep, SwitchCharacterDelay
    SendInput, {4}
Return



